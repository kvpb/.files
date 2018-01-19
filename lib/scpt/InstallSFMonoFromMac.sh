#!/usr/bin/env bash

# InstallSHMonoFromMac.sh
# Install SF Mono from macOS Sierra
#
# Late 2017, while setting up my new MacBook with macOS High Sierra 10.13.2, I spotted San Francisco in Photoshop CC 2018. I like that cool font. I ended up noticing that only Terminal can use a monospaced version of it called SF Mono. According to Simon Fredster, this font is actually shipped with Terminal rather than the whole OS. This is confirmed by `sudo find / -name \*Mono\*.\*tf`'s output.
#	Since manually copying fonts to /Library/Fonts or ~/Library/Fonts was the only way to install fonts before Font Books was introduced to Mac OS X, a one-liner suffices to install these. This installation might surpass another as it allows to set SF Mono as the default plain text font system-wide without requiring to get it externally.

cp -R /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/* /Library/Fonts
