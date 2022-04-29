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
2021-09-06 16:07:00  printf "\n\x1B[30;43m%s\x1B[33;40m" 'TOUCH'; [ -f 0 ] && rm 0; time touch 0; printf "\n\x1B[30;43m%s\x1B[33;40m" 'MKFILE'; rm 0; time mkfile -n 0 0; printf "\n\x1B[30;43m%s\x1B[33;40m" 'BASH builtin-only MF'; rm 0; bash -c 'mf() { for var in "${@}"; do if [ -e "${var}" ]; then printf "${var}: file exists\n"; else :> "${var}"; printf \\n >> ${var}; fi; done; } && time mf 0;'; printf "\n\x1B[30;43m%s\x1B[33;40m" 'ZSH builtin-only MF'; rm 0; zsh -c "TIMEFMT=$'\nreal\t%*E\nuser\t%U\nsys\t%S\n'"; mf() { for var in "${@}"; do if [ -e "${var}" ]; then printf "${var}: file exists\n"; else :> "${var}"; printf \\n >> ${var}; fi; done; } && time (mf 0); printf '\x1B[0m\n'; rm 0;
2021-10-08 12:43:16  diskutil list external physical
2021-10-13 12:00:00  dconf dump / > dconf-dump-1.txt; dconf dump / > dconf-dump-2.txt; diff dconf-dump-1.txt dconf-dump-2.txt;
2021-10-15 00:00:00  d / && d opt && sudo mkdir Qt && d Qt && sudo mkdir 5.14.2 && d && d Downloads && chmod +x qt-opensource-linux-x64-5.14.2.run && ./qt-opensource-linux-x64-5.14.2.run
2022-03-21 17:14:55  for s in ./*.mov; do ffmpeg -i "${s}" -q:v 0 "${s%%.mov}.mp4"; done && ffmpeg -f concat -safe 0 -i <(for s in ./*.mp4; do echo "file '$PWD/$s'"; done) -c copy "Screen Recording 2022-03-21 at 16.59.59.mp4" && ffmpeg -i Screen\ Recording\ 2022-03-21\ at\ 16.59.59.mp4 -filter:v "setpts=0.833333333*PTS" Screen\ Recording\ 2022-03-21\ at\ 17.00.00.mp4
2022-04-01 02:34:46  n=$(diskutil info /dev/disk4 | grep "Block Size" | grep -Eo '[0-9]*') && echo ${n}; i=$(diskutil info /dev/disk4 | grep "Disk Size" | grep -Eo '([0-9]* Bytes)' | grep -Eo '[0-9]*') && echo ${i}; e='^[0-9]+$' && if [[ ${n} =~ ${e} ]]; then dd if=/dev/disk4 of=${HOME}/Connectix\ Virtual\ Game\ Station.iso bs=${n} count=${i} conv=sync,noerror & pid=${!}; fi;
