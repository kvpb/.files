
$ErrorActionPreference = 'Stop'

if (-not ('WindowsAudio.Volume' -as [type])) {
    Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;

namespace WindowsAudio
{
    [Guid("5CDF2C82-841E-4546-9722-0CF74078229A")]
    [InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
    interface IAudioEndpointVolume
    {
        int RegisterControlChangeNotify(IntPtr pNotify);
        int UnregisterControlChangeNotify(IntPtr pNotify);
        int GetChannelCount(out uint channelCount);
        int SetMasterVolumeLevel(float levelDb, Guid eventContext);
        int SetMasterVolumeLevelScalar(float level, Guid eventContext);
        int GetMasterVolumeLevel(out float levelDb);
        int GetMasterVolumeLevelScalar(out float level);
        int SetChannelVolumeLevel(uint channel, float levelDb, Guid eventContext);
        int SetChannelVolumeLevelScalar(uint channel, float level, Guid eventContext);
        int GetChannelVolumeLevel(uint channel, out float levelDb);
        int GetChannelVolumeLevelScalar(uint channel, out float level);
        int SetMute([MarshalAs(UnmanagedType.Bool)] bool mute, Guid eventContext);
        int GetMute(out bool mute);
        int GetVolumeStepInfo(out uint step, out uint stepCount);
        int VolumeStepUp(Guid eventContext);
        int VolumeStepDown(Guid eventContext);
        int QueryHardwareSupport(out uint mask);
        int GetVolumeRange(out float minDb, out float maxDb, out float incrementDb);
    }

    [Guid("A95664D2-9614-4F35-A746-DE8DB63617E6")]
    [InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
    interface IMMDeviceEnumerator
    {
        int NotImplemented();
        int GetDefaultAudioEndpoint(int dataFlow, int role, out IMMDevice device);
    }

    [Guid("D666063F-1587-4E43-81F1-B948E807363F")]
    [InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
    interface IMMDevice
    {
        int Activate(
            ref Guid interfaceId,
            int classContext,
            IntPtr activationParameters,
            out IAudioEndpointVolume endpointVolume
        );
    }

    [ComImport]
    [Guid("BCDE0395-E52F-467C-8E3D-C4579291692E")]
    class MMDeviceEnumeratorComObject
    {
    }

    public static class Volume
    {
        public static void SetPercent(float percent)
        {
            if (percent < 0 || percent > 100)
                throw new ArgumentOutOfRangeException(
                    nameof(percent),
                    "Le volume doit être compris entre 0 et 100."
                );

            var enumerator =
                (IMMDeviceEnumerator)new MMDeviceEnumeratorComObject();

            IMMDevice device;
            Marshal.ThrowExceptionForHR(
                enumerator.GetDefaultAudioEndpoint(0, 1, out device)
            );

            Guid interfaceId = typeof(IAudioEndpointVolume).GUID;
            IAudioEndpointVolume endpoint;

            Marshal.ThrowExceptionForHR(
                device.Activate(
                    ref interfaceId,
                    23,
                    IntPtr.Zero,
                    out endpoint
                )
            );

            Guid context = Guid.Empty;

            Marshal.ThrowExceptionForHR(
                endpoint.SetMute(false, context)
            );

            Marshal.ThrowExceptionForHR(
                endpoint.SetMasterVolumeLevelScalar(percent / 100f, context)
            );
        }
    }
}
'@
}

[WindowsAudio.Volume]::SetPercent(1)
