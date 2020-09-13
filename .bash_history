tar -cf - Group\ Containers/UBF8T346G9.Office/User\ Content.localized/Templates.localized | tar -C ~/.files/lib/ -xf - # Copy file recursively, copying directory structure. (i) I ran this on 2018.1.27 at 19:11:.
sips -r 359 image.jpg # Rotate a picture of 359 degrees clockwise, -1 degree counterclockwise. (i) I ran this on 2018.03.18 at 21:27:00.
ls -d */ # List directory's subdirectories. (i) I ran this on 2018.04.20 at about 15:30:00.
find . -mindepth 1 -maxdepth 1 -type d # List simply directory's subdirectories. (i) I ran this on 2018.04.20 at about 15:31:00.
ls -l | grep "^d" # List longly directory's subdirectories. (i) I ran this on 2018.04.20 at about 15:35:00.
echo */ # List dirtily directory's subdirectories. (i) I ran this on 2018.04.20 at about 15:40:00.
ls -AF | grep -v -e / -e \* -e @ -e = -e % -e \| -e \> # List simply directory's regular files. (i) I ran this on 2018.04.20 at about 16:00:00.
ls -AdF .* | grep -v -e / -e \* -e @ -e = -e % -e \| -e \> # List simply directory's hidden regular files. (i) I ran this on 2018.04.20 at about 16:05:00.
ls -d .*/ | tail -n +3 # List simply directory's hidden subdirectories. (i) I ran this on 2018.04.20 at about 16:10:00.
var="${RANDOM}"; tar -c -f "tmpcp${var}.tar" Services ; tar -x -f "tmpcp${var}.tar" -C ~/.files/lib/ # Copy file preserving directory structure. /i\ Requires to be at the file to copy's parent directory because it copies the entire given path. [i] This does not clear the temporary archive. To remove it, append `; mv -R "tmpcp${var}.tar" ~/.Trash/`. (i) I ran this on 2018.05.12 at 14:50:00.
iconv -f iso-8859-1 -t utf-8 < file > file.txt # Convert an ISO-8859-1-encoded file to UTF-8. (i) I ran this on 2019.02.13 at 08:54:30.
2900  2019-05-25 13:00:00  find / -not \( -path /Applications -prune \) -not \( -path /Library -prune \) -not \( -path /Network -prune \) -not \( -path /System -prune \) -not \( -path /Users -prune \) -not \( -path /Volumes -prune \) -not \( -path /.DocumentRevisions-V100 -prune \) -not \( -path /.PKInstallSandboxManager-SystemSoftware -prune \) -not \( -path /.Spotlight-V100 -prune \) -not \( -path /.fseventsd -prune \) -not \( -path /.vol -prune \) -iname \*cron\*
2019-05-31 11:46:49  find ${HOME} -mindepth 1 -maxdepth 1 -type d -not \( -path ${HOME}/Library \) -not \( -path ${HOME}/Applications \) -not \( -path ${HOME}/Desktop \) -not \( -path ${HOME}/Documents \) -not \( -path ${HOME}/Downloads \) -not \( -path ${HOME}/Movies \) -not \( -path ${HOME}/Music \) -not \( -path ${HOME}/Pictures \) -not \( -path ${HOME}/Public \) -not \( -path ${HOME}/.Trash \) -not \( -path ${HOME}/Dropbox \) -not \( -path ${HOME}/.dropbox \) -or -type f -not \( -path ${HOME}/.CFUserTextEncoding \) -not \( -path ${HOME}/.DS_Store \) -exec xattr -rcv {} \;
2019-06-10 11:21:00  sudo find /private/var/folders -regex '.*\.pkg.*' -type f -mtime -1 -exec ln "{}" /Users/Shared/ \;
2019-06-10 11:23:32  open ${TMPDIR}/../C/com.apple.appstore/
2019-06-10 15:20:38  defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerContentType = "com.microsoft.word.doc"; LSHandlerRoleAll = "com.apple.TextEdit"; }'
2019-06-11 11:11:03  plutil -replace NSHighResolutionCapable -bool true /Applications/LibreOffice.app/Contents/Info.plist && /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -v -f /Applications/LibreOffice.app
2020-01-10 14:43:07  sudo defaults write /Library/Preferences/com.apple.Bluetooth CoreBluetoothCache -dict && sudo launchctl unload /System/Library/LaunchDaemons/com.apple.bluetoothd.plist && sudo launchctl load /System/Library/LaunchDaemons/com.apple.bluetoothd.plist
2020-03-11 15:09:05  git rebase --committer-date-is-author-date --root; git push --force-with-lease;
2020-03-11 15:25:43  git filter-branch --env-filter 'export GIT_COMMITTER_DATE="$GIT_AUTHOR_DATE"'; g pl;
2020-03-11 15:25:50  git filter-branch -f --env-filter 'export GIT_COMMITTER_DATE="$GIT_AUTHOR_DATE"' $SHA1..HEAD
2020-09-13 12:55:29  awk -F, '$3 ~ /^Timid/' method1.csv | awk -F, '$11 ~ /^Fire/' > file1.csv;
