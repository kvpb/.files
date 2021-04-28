#!/usr/bin/env bash

mkdir -p ${HOME}/Temporary
cd ${HOME}/Temporary
curl --remote-name --location http://tmkk.undo.jp/xld/xld-20170729.dmg
hdiutil mount -nobrowse xld-20170729.dmg
cp -R /Volumes/XLD\ 20170729/XLD.app /Applications/
cp -R /Volumes/XLD\ 20170729/CLI/xld /usr/local/bin/
hdiutil unmount /Volumes/XLD\ *
mv xld-20170729.dmg ${HOME}/Downloads/
cd ${HOME}
rmdir Temporary
exit 0

# InstallXLD.sh
#
# Karl V. P. B. `kvpb`
# +33 A BB BB BB BB
# local-part@domain
