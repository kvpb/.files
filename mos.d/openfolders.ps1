
$ErrorActionPreference = 'Stop'
Set-StrictMode -Version 2.0

Add-Type -AssemblyName System.Windows.Forms

if (-not ('OpenFolders.NativeMethods' -as [type])) {
    Add-Type -TypeDefinition @'
using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;

namespace OpenFolders
{
    public static class NativeMethods
    {
        private delegate bool EnumWindowsProc(IntPtr hWnd, IntPtr lParam);

        [DllImport("user32.dll")]
        private static extern bool EnumWindows(EnumWindowsProc callback, IntPtr lParam);

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern int GetClassName(IntPtr hWnd, StringBuilder className, int maxCount);

        [DllImport("user32.dll")]
        private static extern bool IsWindowVisible(IntPtr hWnd);

        [DllImport("user32.dll")]
        public static extern bool IsWindow(IntPtr hWnd);

        [DllImport("user32.dll")]
        private static extern bool ShowWindowAsync(IntPtr hWnd, int command);

        [DllImport("user32.dll")]
        private static extern bool BringWindowToTop(IntPtr hWnd);

        [DllImport("user32.dll")]
        private static extern bool SetForegroundWindow(IntPtr hWnd);

        [DllImport("user32.dll")]
        public static extern IntPtr GetForegroundWindow();

        [DllImport("user32.dll")]
        private static extern uint GetWindowThreadProcessId(IntPtr hWnd, IntPtr processId);

        [DllImport("kernel32.dll")]
        private static extern uint GetCurrentThreadId();

        [DllImport("user32.dll")]
        private static extern bool AttachThreadInput(uint attach, uint attachTo, bool value);

        [DllImport("user32.dll")]
        private static extern void keybd_event(byte virtualKey, byte scanCode, uint flags, UIntPtr extraInfo);

        private const uint KEYEVENTF_KEYUP = 0x0002;
        private const int SW_RESTORE = 9;

        private const byte VK_MENU = 0x12;
        private const byte VK_CONTROL = 0x11;
        private const byte VK_T = 0x54;
        private const byte VK_L = 0x4C;
        private const byte VK_V = 0x56;
        private const byte VK_RETURN = 0x0D;

        public static long[] GetExplorerWindowHandles()
        {
            var handles = new List<long>();

            EnumWindows(delegate (IntPtr hWnd, IntPtr lParam)
            {
                if (!IsWindowVisible(hWnd))
                    return true;

                var buffer = new StringBuilder(256);
                GetClassName(hWnd, buffer, buffer.Capacity);
                string className = buffer.ToString();

                if (className == "CabinetWClass" || className == "ExploreWClass")
                    handles.Add(hWnd.ToInt64());

                return true;
            }, IntPtr.Zero);

            return handles.ToArray();
        }

        public static bool FocusExplorerWindow(IntPtr hWnd)
        {
            if (hWnd == IntPtr.Zero || !IsWindow(hWnd))
                return false;

            keybd_event(VK_MENU, 0, 0, UIntPtr.Zero);
            keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, UIntPtr.Zero);

            IntPtr foreground = GetForegroundWindow();
            uint currentThread = GetCurrentThreadId();
            uint targetThread = GetWindowThreadProcessId(hWnd, IntPtr.Zero);
            uint foregroundThread = foreground == IntPtr.Zero
                ? 0
                : GetWindowThreadProcessId(foreground, IntPtr.Zero);

            bool attachedTarget = false;
            bool attachedForeground = false;

            try
            {
                if (targetThread != 0 && currentThread != targetThread)
                    attachedTarget = AttachThreadInput(currentThread, targetThread, true);

                if (foregroundThread != 0 &&
                    foregroundThread != currentThread &&
                    foregroundThread != targetThread)
                {
                    attachedForeground = AttachThreadInput(currentThread, foregroundThread, true);
                }

                ShowWindowAsync(hWnd, SW_RESTORE);
                BringWindowToTop(hWnd);
                SetForegroundWindow(hWnd);
                Thread.Sleep(100);
            }
            finally
            {
                if (attachedForeground)
                    AttachThreadInput(currentThread, foregroundThread, false);

                if (attachedTarget)
                    AttachThreadInput(currentThread, targetThread, false);
            }

            return GetForegroundWindow() == hWnd;
        }

        private static void KeyDown(byte key)
        {
            keybd_event(key, 0, 0, UIntPtr.Zero);
        }

        private static void KeyUp(byte key)
        {
            keybd_event(key, 0, KEYEVENTF_KEYUP, UIntPtr.Zero);
        }

        private static void ControlKey(byte key)
        {
            KeyDown(VK_CONTROL);
            KeyDown(key);
            KeyUp(key);
            KeyUp(VK_CONTROL);
        }

        public static void NewTab()
        {
            ControlKey(VK_T);
        }

        public static void FocusAddressBar()
        {
            ControlKey(VK_L);
        }

        public static void Paste()
        {
            ControlKey(VK_V);
        }

        public static void Enter()
        {
            KeyDown(VK_RETURN);
            KeyUp(VK_RETURN);
        }
    }
}
'@
}

$script:LogPath = Join-Path $env:TEMP 'openfolders-last-error.txt'

function Write-Step {
    param([Parameter(Mandatory = $true)][string]$Text)
    $script:LastStep = $Text
}

function Get-ExplorerHandles {
    return @([OpenFolders.NativeMethods]::GetExplorerWindowHandles() | ForEach-Object { [long]$_ })
}

function Focus-ExactExplorerWindow {
    param([Parameter(Mandatory = $true)][IntPtr]$Handle)

    for ($attempt = 1; $attempt -le 25; $attempt++) {
        if (-not [OpenFolders.NativeMethods]::IsWindow($Handle)) {
            throw 'La nouvelle fenêtre de l’Explorateur a disparu.'
        }

        if ([OpenFolders.NativeMethods]::FocusExplorerWindow($Handle)) {
            Start-Sleep -Milliseconds 180

            if ([OpenFolders.NativeMethods]::GetForegroundWindow() -eq $Handle) {
                return
            }
        }

        Start-Sleep -Milliseconds 120
    }

    throw 'Impossible de placer la nouvelle fenêtre de l’Explorateur au premier plan. Aucun onglet existant n’a été modifié.'
}

function Set-ClipboardTextSafely {
    param([Parameter(Mandatory = $true)][string]$Text)

    for ($attempt = 1; $attempt -le 20; $attempt++) {
        try {
            [System.Windows.Forms.Clipboard]::SetText($Text)
            return
        }
        catch {
            Start-Sleep -Milliseconds 100
        }
    }

    throw 'Le presse-papiers est verrouillé par une autre application.'
}

function Open-NewTabAtPath {
    param(
        [Parameter(Mandatory = $true)][IntPtr]$WindowHandle,
        [Parameter(Mandatory = $true)][string]$Path
    )

    Focus-ExactExplorerWindow -Handle $WindowHandle

    [OpenFolders.NativeMethods]::NewTab()
    Start-Sleep -Milliseconds 550

    Focus-ExactExplorerWindow -Handle $WindowHandle
    [OpenFolders.NativeMethods]::FocusAddressBar()
    Start-Sleep -Milliseconds 180

    Set-ClipboardTextSafely -Text $Path
    [OpenFolders.NativeMethods]::Paste()
    Start-Sleep -Milliseconds 120
    [OpenFolders.NativeMethods]::Enter()

    Start-Sleep -Milliseconds 950
}

$clipboardBackup = $null
$clipboardWasCaptured = $false
$script:LastStep = 'Initialisation'

try {
    Write-Step 'Résolution des dossiers'

    $shell = New-Object -ComObject Shell.Application
    $desktop = [Environment]::GetFolderPath([Environment+SpecialFolder]::DesktopDirectory)
    $downloadsFolder = $shell.NameSpace('shell:Downloads')

    if ($null -eq $downloadsFolder) {
        throw 'Le dossier Téléchargements est introuvable.'
    }

    $base = Join-Path $env:USERPROFILE 'Program Files\VBA-ReRecording\vba-rerecording-svn480-win32'

    $paths = @(
        $base
        (Join-Path $base 'battery')
        (Join-Path $base 'save')
        (Join-Path $base 'lua')
        $desktop
        $downloadsFolder.Self.Path
    )

    $missing = @($paths | Where-Object {
        -not (Test-Path -LiteralPath $_ -PathType Container)
    })

    if ($missing.Count -gt 0) {
        throw "Dossier(s) introuvable(s) :`r`n$($missing -join "`r`n")"
    }

    try {
        $clipboardBackup = [System.Windows.Forms.Clipboard]::GetDataObject()
        $clipboardWasCaptured = $true
    }
    catch {
    }

    Write-Step 'Inventaire des fenêtres existantes'
    $before = [Collections.Generic.HashSet[long]]::new()
    foreach ($handle in @(Get-ExplorerHandles)) {
        [void]$before.Add($handle)
    }

    Write-Step 'Ouverture directe du premier dossier dans une nouvelle fenêtre'
    $explorerPath = Join-Path $env:WINDIR 'explorer.exe'
    $processInfo = New-Object System.Diagnostics.ProcessStartInfo
    $processInfo.FileName = $explorerPath
    $processInfo.Arguments = '/n,"{0}"' -f $paths[0]
    $processInfo.UseShellExecute = $true
    [void][System.Diagnostics.Process]::Start($processInfo)

    Write-Step 'Détection de la nouvelle fenêtre'
    $targetHandleValue = 0L
    $deadline = [DateTime]::UtcNow.AddSeconds(20)

    while ($targetHandleValue -eq 0 -and [DateTime]::UtcNow -lt $deadline) {
        Start-Sleep -Milliseconds 150

        foreach ($handle in @(Get-ExplorerHandles)) {
            if (-not $before.Contains($handle)) {
                $targetHandleValue = $handle
                break
            }
        }
    }

    if ($targetHandleValue -eq 0) {
        throw 'Windows n’a pas créé de nouvelle fenêtre de l’Explorateur. Le script s’arrête sans toucher aux fenêtres déjà ouvertes.'
    }

    $targetHandle = [IntPtr]$targetHandleValue

    Write-Step 'Activation de la nouvelle fenêtre'
    Focus-ExactExplorerWindow -Handle $targetHandle
    Start-Sleep -Milliseconds 700

    for ($index = 1; $index -lt $paths.Count; $index++) {
        Write-Step ("Ouverture de l’onglet {0}/6 : {1}" -f ($index + 1), $paths[$index])
        Open-NewTabAtPath -WindowHandle $targetHandle -Path $paths[$index]
    }

    Write-Step 'Terminé'
    Remove-Item -LiteralPath $script:LogPath -Force -ErrorAction SilentlyContinue
}
catch {
    $details = @(
        (Get-Date -Format 'yyyy-MM-dd HH:mm:ss')
        "Étape : $script:LastStep"
        "Erreur : $($_.Exception.Message)"
        ''
        $_.ScriptStackTrace
    )

    try {
        $details | Set-Content -LiteralPath $script:LogPath -Encoding UTF8
    }
    catch { }

    [System.Windows.Forms.MessageBox]::Show(
        "Étape : $script:LastStep`r`n`r`n$($_.Exception.Message)`r`n`r`nJournal : $script:LogPath",
        'Erreur openfolders',
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Error
    ) | Out-Null
}
finally {
    if ($clipboardWasCaptured -and $null -ne $clipboardBackup) {
        try {
            [System.Windows.Forms.Clipboard]::SetDataObject($clipboardBackup, $true)
        }
        catch {
        }
    }
}
