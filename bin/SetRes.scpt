#!/usr/bin/env osascript

--activate application "System Preferences"
--tell application "System Events"
--	keystroke "L" using {command down}
--end tell
quit application "System Preferences" --do shell script "killall System\ Preferences"
delay 0.5
launch application "System Preferences"
delay 0.5

tell application "System Preferences"
	reveal anchor "displaysDisplayTab" of pane "com.apple.preference.displays"
end tell
delay 0.5
tell application "System Events" to tell process "System Preferences" to tell window "Built-in Retina Display"
	click radio button "Scaled" of tab group 1
	click radio button 5 of radio group 1 of group 1 of tab group 1 --click radio button 4 of radio group 1 of group 1 of tab group 1
end tell

--quit application "System Preferences"

--	SetRes.scpt
--	rescale Aqua (set the resolution for the primary display)
--	https://support.apple.com/guide/mac-help/change-your-displays-resolution-mchl86d72b76/mac
--	https://developer.apple.com/library/archive/documentation/Accessibility/Conceptual/AccessibilityMacOSX/OSXAXTestingApps.html
--	https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/introduction/ASLR_intro.html
--	https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/reference/ASLR_cmds.html
--
--	Karl V. P. B. `kvpb`
--	+1 (DDD) DDD-DDDD
--	+33 A BB BB BB BB
--	local-part@domain
--	local-part@domain
--	https://www.linkedin.com/in/karlbertin
--	https://twitter.com/yougotkarld
--	https://github.com/kvpb
--	https://vm.tiktok.com/ZSwAmcFh/
--
--	It works! God knows how long it will. Bloody hell. I failed to achieve that on Mavericks back in '14, '15, '16 and '17. I failed to do it on Yosemite back in '15, '16, '18, '20 and '21. I failed again on High Sierra back in '17, '18, '19, '20 and '21. I kept failing on Big Sur last year. I just finally succeeded on Monterey at last. It took 8 years, but it was worth it. I cannot lose, unless I give up.

--	Copyright 2022 Karl V. P. Bertin
--
--	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
--
--	1.  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
--
--	2.  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
--
--	3.  Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
--
--	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
