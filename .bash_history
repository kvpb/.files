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
