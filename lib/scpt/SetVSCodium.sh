#!/usr/bin/env sh

kernel=$(uname -s)
[ "${kernel}" = 'Linux' ] && filepath=~/.config/VSCodium
[ "${kernel}" = 'Darwin' ] && filepath=~/Library/Application\ Support/VSCodium

if [ "${kernel}" != 'Linux' -a "${kernel}" != 'Darwin' ]
then
	exit 1
fi
if [ -f "${filepath}/product.json" ]
then
	printf 'Error: ~/Library/Application Support/VSCodium/product.json exists\n'
	exit 1
fi
cat <<EOF | sed 's/a/b/' | tee "${filepath}"/product.json > /dev/null
{
  "extensionsGallery": {
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",
    "itemUrl": "https://marketplace.visualstudio.com/items",
    "controlUrl": "",
    "recommendationsUrl": ""
  }
}
EOF
exit 0

# SetVSCodium.sh
# Set VSCodium
#
# Karl V. P. B. `kvpb`
# +33 A BB BB BB BB
# local-part@domain
#
# SetVSCodium.sh is a configuration script to set VSCodium to use the VS Code Marketplace.
