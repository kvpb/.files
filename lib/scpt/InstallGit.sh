#!/usr/bin/env bash

#DMG_filename="git-latest-osx-installer.dmg"
#DMG_filename_extension="${DMG_filename##*.}"
#DMG_filename_without_extension=$(basename "${DMG_filename}" .dmg)
#DMG_PKG_pathname="/Volumes/Git * Intel Universal/git-*-intel-universal-*.pkg"
#DMG_PKG_filename="${DMG_PKG_pathname##*/}"

mkdir -p ${HOME}/Temporary
cd ${HOME}/Temporary
curl --remote-header-name --location https://sourceforge.net/projects/git-osx-installer/files/latest --output git-latest-osx-installer.dmg
hdiutil mount -nobrowse git-latest-osx-installer.dmg
#DMG_PKG_filename=$(basename "/Volumes/Git\ *\ *\ Intel\ Universal/git-*-intel-universal-*.pkg")
#DMG_PKG_filename_extension="${DMG_PKG_filename##*.}"
#DMG_PKG_filename="${DMG_PKG_filename%.*}"
#DMG_PKG_filename_without_extension=$(basename "/Volumes/Git\ *\ *\ Intel\ Universal/git-*-intel-universal-*.pkg" .pkg)
sudo installer -pkg /Volumes/Git\ *\ Intel\ Universal/git-*-intel-universal-*.pkg -target /
hdiutil unmount /Volumes/Git\ *\ Intel\ Universal
#mv "${DMG_filename}" "${DMG_PKG_filename_without_extension}.${DMG_filename_extension}"
#mv git-*-intel-universal-*.dmg ~/Downloads/
mv git-latest-osx-installer.dmg ~/Downloads/
cd ${HOME}
rmdir Temporary
exit 0

# InstallGit.sh
#
# Karl V. P. B. `kvpb`
# +33 A BB BB BB BB
# local-part@domain
