tap "homebrew/versions"
tap "homebrew/cask" #brew tap
tap "dimentium/autoraise" # AutoRaise #tap "user/tap-repo", "https://user@bitbucket.org/user/homebrew-tap-repo.git", force_auto_update: true

#   C O M M A N D - L I N E   I N T E R F A C E 

#   s h e l l s   &   p r o g r a m m i n g   l a n g u a g e s

brew "bash" # BASH

brew "zsh" # ZSH

#   p r o g r a m m i n g   l a n g u a g e s ,   t o o l c h a i n s   &   v e r s i o n   m a n a g e r s 

#brew "rust" # Rust # should be installed with RustUp already.

#brew "go" # Go

#brew "ruby" # Ruby
brew "openssl@3"
brew "readline"
brew "libyaml"
brew "gmp"
brew "autoconf"
brew "rbenv/tap/openssl@1.1"
brew "ruby-build" # Ruby-Build
#brew "ruby-install", args: ["HEAD"] # Ruby-Install
brew "rbenv" # RBEnv
#brew "chruby", args: ["HEAD"] # CHRuby
# Ruby & RBEnv

#brew "python@3.13" # Python 3
brew "pyenv" # PYEnv
# Python & PYEnv

brew "nodejs" # Node.js
brew "nvm" # NVM
# Node.js & NVM

brew "octave" # Octave

#   d a t a b a s e   e n g i n e s   &   d a t a b a s e   m a n a g e m e n t   s y s t e m 

brew "sqlite" # SQLite 3
brew "mysql" # MySQL

#   t e x t   e d i t o r s 

brew "vim" # VIm

brew "micro" # Micro

#   f i l e   m a n a g e m e n t   u t i l i t i e s   &   r e m o t e   b a c k u p   s e r v i c e 

#brew "rar" # RAR
#brew "unrar" # UnRAR

#   n e t w o r k i n g   u t i l i t i e s 

brew "openssl" # OpenSSL
brew "openssh" # OpenSSH

brew "mosh" # MOSH

#   w e b   c l i e n t s ,   F T P   &   H T T P   c l i e n t s 

brew "curl" # CURL

brew "wget" # WGet

#   m i s c e l l a n e o u s   u t i l i t i e s 

brew "coreutils" # CoreUtils
brew "findutils" # FindUtils
brew "grep" # GREP
brew "tree" # Tree
brew "thefuck" # The Fuck

#   s y s t e m   u t i l i t i e s 

brew "fswatch" # FSWatch
brew "htop" # HTop

#   c o n t r o l s

brew "blueutil" if OS.mac? # BlueUtil
brew "mas" if OS.mac? # MAS

#   t y p e - 2   h y p e r v i s o r s 

brew "xhyve", args: ['HEAD'] if OS.mac? # XHyve

#   v e r s i o n   c o n t r o l   s y s t e m 

brew "git" # Git

#   m u l t i m e d i a   f r a m e w o r k 

brew "ffmpeg" # FFMPEG

#   m e d i a   p l a y e r    s o f t w a r e 

brew "cmus" # CMus

#   t e r m i n a l   m u l t i p l e x e r s 

brew "tmux" # TMUX

#   G R A P H I C A L   U S E R   I N T E R F A C E 

cask_args appdir: "/Applications", require_sha: true # Set arguments for all `brew install --cask` commands.

#   p r o g r a m m i n g   l a n g u a g e s ,   r u n t i m e   e n v i r o n m e n t s   &   d e v e l o p m e n t   k i t s 

cask "java" unless system "/usr/libexec/java_home --failfast" # Java

#   s e r v e r   o p e r a t i n g   s y s t e m 

mas "Server", id: 883878097 # macOS Server

#   t e r m i n a l   e m u l a t o r s   &   i n t e g r a t e d   d e v e l o p m e n t   e n v i r o n m e n t s 

cask "iterm2" if OS.mac? # iTerm2
cask "visual-studio-code" # Visual Studio Code
#mas "Xcode", id: 497799835 # Xcode

#   f i l e   m a n a g e r s   &   w e b   b r o w s e r s 

cask "firefox", args: { appdir: "/Applications" } # Firefox #brew install --cask --appdir=/Applications
#cask "opera", greedy: true # Always upgrade the auto-updated or unversioned cask to the latest version.
#mas "Opera", id: 404764921
# Opera
cask "google-chrome", args: { force: true } # Chrome #brew install --cask

#   c o m m u n i c a t i o n   p r o t o c o l s   &   f i l e   s h a r i n g   s o f t w a r e 

#mas "Transmit", id: 1436522307 # Transmit
#mas "FileZilla Pro", id: 1298486723 # FileZilla Pro
cask "transmission" # Transmission
#cask "android-file-transfer" # Android File Transfer
#cask "" # Smart Switch
cask "localsend" # LocalSend

#   t y p e - 2   h y p e r v i s o r s 

cask "parallels" if OS.mac?
#mas "Parallels Desktop", id: 1085114709
# Parallels Desktop for Mac
#cask "vmware-fusion" # VMware Fusion
cask "utm" if OS.mac?
#mas "UTM", id: 1538878817
# UTM

#   s y s t e m   u t i l i t i e s 

cask "jumpcut" if OS.mac? # Jumpcut
#brew "koekeishiya/formulae/yabai" if OS.mac? # Yabai
#brew "autoraise" #brew services start autoraise
#brew "autoraise", args: ["with-dalternative_task_switcher"]
#brew "autoraise", args: ["with-dold_activation_method"]
#brew "autoraise", ["with-dexperimental_focus_first"]
cask "dimentium/autoraise/autoraiseapp" if OS.mac?
# AutoRaise

#   m i s c e l l a n e o u s   u t i l i t i e s 

cask "protonmail-bridge" # ProtonMail Bridge
cask "retroactive" if OS.mac? unless system("uname -p") == "arm" # Retroactive
cask "tomatobar" if OS.mac? # TomatoBar
cask "audio-hijack" if OS.mac? # Audio Hijack
cask "hex-fiend" if OS.mac? # Hex Fiend
mas "Joystick Mapper", id: 528183797 # Joystick Mapper
cask "8bitdo-ultimate-software"
#mas "8BitDo Ultimate Software", id: 1532713768
# 8bitdo Ultimate Software
#mas "Magnet", id: 441258766 # Magnet
cask "rectangle" if OS.mac? # Rectangle
#cask "rectangle-pro" if OS.mac? # Rectangle Pro # I paid a license as a donation. Rectangle suffices.
cask "nikitabobko/tap/aerospace" # AeroSpace
#cask "Yoink" if OS.mac? # Yoink 
#cask "filepane" if OS.mac? # Filepane
#mas "Dropover", id: 1355679052 # Dropover
#mas "Amphetamine", id: 937984704 # Amphetamine
cask "keepingyouawake" if OS.mac? # KeepingYouAwake
mas "Coin Tick", id: 1141688067 # Coin Tick
cask "keycastr" if OS.mac? # KeyCastr
cask "appzapper" if OS.mac? # AppZapper
#mas "Gemini", id: 463541543 # Gemini
#mas "Gemini 2", id: 1090488118 # Gemini 2
cask "onyx" if OS.mac? # OnyX
#mas "WorldWideWeb", id: 1621370168 # WorldWideWeb
#mas "Apple Configurator", id: 434433123 # Apple Configurator
#mas "Apple Configurator", id: 1037126344 # Apple Configurator 2
#cask "impactor" # Cydia Impactor
#cask "altdeploy" # AltDeploy
mas "Deliveries", id: 290986013 # Deliveries
mas "Affluences", id: 869919405 # Affluences
mas "Coin Tick", id: 1141688067 # Coin Tick
#cask "" # PokeFinder
#cask "" # PowerSaves for Amiibo

#   c r y p t o c u r r e n c y   w a l l e t s 

cask "electrum" # Electrum
cask "trezor-suite" # Trezor Suite

#   f i l e   m a n a g e m e n t   u t i l i t i e s   &   r e m o t e   b a c k u p   s e r v i c e 

cask "imageoptim" if OS.mac? # ImageOptim
cask "rar" # WinRAR
cask "pacifist" # Pacifist
#cask "dropbox" # Dropbox

#   f l a s h - c a r d   s p a c e d   r e p e t i t i o n   s o f t w a r e 

cask "anki" # Anki

#   p r o j e c t   m a n a g e m e n t   s o f t w a r e 

cask "basecamp" # Basecamp

#   o f f i c e   s u i t e s   ( p r o d u c t i v i t y   s o f t w a r e ) 
#
#cask "microsoft-office" if OS.mac? # Office for Mac

#   s p r e a d s h e e t s 

cask "microsoft-excel" if OS.mac? # Excel for Mac
#mas "Microsoft Excel", id: 462058435 # Excel

#   w o r d   p r o c e s s o r s 

cask "microsoft-word" if OS.mac? # Word for Mac
#mas "Microsoft Word", id: 462054704 # Word

#   p r e s e n t a t i o n   p r o g r a m s   [ s h o u l d n ' t   e v e n   e x i s t   f o r   f u c k ' s   s a k e ] 

cask "microsoft-powerpoint" if OS.mac? # PowerPoint for Mac
#mas "Microsoft PowerPoint", id: 462062816 # PowerPoint

#   d i g i t a l   a u d i o   w o r k s t a t i o n s 

cask "ableton-live-suite" # Ableton Live Suite

#   g r a p h i c s   s u i t e s   ( g r a p h i c s   d e s i g n   s o f t w a r e )   #   s o f t w a r e   s u i t e s 

#cask "adobe-creative-cloud" # Adobe Creative Cloud

#   s t r e a m i n g   m e d i a 

cask "obs" # Open Broadcaster Software

#   i m a g e   p r o c e s s i n g   &   o r g a n i z a t i o n   s o f t w a r e 

#mas "Adobe Lightroom", id: 1451544217 # Photoshop Lightroom
mas "Aperture", id: 408981426 # Aperture

#   r a s t e r   g r a p h i c s   e d i t o r s 

cask "gimp" if OS.linux? # GIMP
#mas "Pixelmator", id: 407963104 # Pixelmator
mas "Pixelmator Pro", id: 1289583905 # Pixelmator Pro
#cask "affinity-photo" # Affinity Photo

#   v e c t o r   g r a p h i c s   e d i t o r s 

cask "inkscape" if OS.linux? # Inkscape
cask "sketch" if OS.mac? # Sketch
#mas "Sketch 3", id: 852320343 # Sketch 3

#   3 D   c o m p u t e r   g r a p h i c s   s o f t w a r e 

cask "blender" # Blender

#   t r a n s c o d e r s 

cask "handbrake" # HandBrake

#   i m a g e   &   P D F   v i e w e r s 

mas "Gapplin", id: 768053424 # Gapplin

#   m e d i a   p l a y e r   s o f t w a r e 

cask "vlc" if OS.linux? # VLC
cask "iina" if OS.mac? # IINA

#   e m a i l   c l i e n t s 

#cask "microsoft-outlook" if OS.mac? # Microsoft Outlook
#mas "Microsoft Outlook", id: 985367838 # Outlook

#   i n s t a n t   m e s s a g i n g   ( I M )   &   v o i c e - o v e r - I P   ( V O I P )   s e r v i c e s 

cask "whatsapp"
#mas "WhatsApp Desktop", id: 1147396723
#mas "WhatsApp Messenger", id: 310633997
# WhatsApp
cask "discord" # Discord
mas "Colloquy IRC Client", id: 302000478 # Colloquy

#   a d d r e s s   b o o k   s o f t w a r e 

#

#   d i g i t a l   c a l e n d a r s   ( c a l e n d a r i n g   s o f t w a r e ) 

#cask "" # Calendr

#   d i g i t a l   c l o c k s 

#

#   v i d e o   g a m e   c o n s o l e   e m u l a t o r s 

cask "sameboy" # SameBoy
#cask "" # PCSX2
cask "mgba" # MGBA
#cask "" # NanoBoyAdvance
cask "dolphin" # Dolphin
#cask "" # RPCS3
cask "citra" # Citra
#cask "" # Ryujinx
#cask "" # Yuzu

#   v i d y a 

#mas "Oceanhorn", id: 1044375067 # Oceanhorn
#mas "Rayman Origins", id: 696651502 # Rayman Origins
#mas "Resident Evil 2", id: 1640632432 # Resident Evil 2
#mas "SUPERHOT", id: 1109409676 # SuperHot
#mas "Wasteland 2", id: 1105453220 # Wasteland 2

#   s y s t e m   p r o f i l e r s   ( s y s t e m   u t i l i t i e s )   &   d a t a b a s e s 

mas "Silicon Info", id: 1542271266 # Silicon Info
cask "mactracker" if OS.mac?
#mas "Mactracker", id: 430255202
# Mactracker

#   d o w n l o a d   m a n a g e r s 

cask "jdownloader" # JDownloader2

#   d i g i t a l   d i s t r i b u t i o n   &   d i g i t a l   r i g h t s   m a n a g e m e n t   s e r v i c e s 

cask "gog-galaxy" # GOG Galaxy
#cask "steam" # Steam
cask "qobuz-downloader" # Qobuz Downloader
#cask "spotify" # Spotify

#   o t h e r   s o f t w a r e 

mas "Shazam", id: 897118787 # Shazam
#cask "" # Grayjay

#   u n i n s t a l l e r s 

brew "pearcleaner" if OS.mac? # Pearcleaner

#   V i s u a l   S t u d i o   C o d e   e x t e n s i o n s 

vscode "ms-vscode.cpptools" # C/C++

vscode "rust-lang.rust-analyzer" # Rust-Analyzer

#vscode "golang.go" # Go

#vscode "ms-dotnettools.vscode-dotnet-runtime" # .NET Install Tool
#vscode "ms-dotnettools.csharp" # C#

vscode "shopify.ruby-lsp" # Ruby LSP

vscode "ms-python.python" # Python
vscode "ms-python.isort" # isort
vscode "ms-python.vscode-pylance" # Pylance
vscode "ms-python.debugpy" # Python Debugger

vscode "wolframresearch.wolfram" # Wolfram Language

vscode "james-yu.latex-workshop" # LATEX Workshop

vscode "ms-toolsai.jupyter" # Jupyter
vscode "ms-toolsai.vscode-jupyter-cell-tags" # Jupyter Cell Tags
vscode "ms-toolsai.jupyter-keymap" # Jupyter Keymap
vscode "ms-toolsai.jupyter-renderers" # Jupyter Notebook Renderers
vscode "ms-toolsai.vscode-jupyter-slideshow" # Jupyter Slide Show

vscode "ms-vsliveshare.vsliveshare-pack" # Live Share Extension Pack

vscode "github.github-vscode-theme" # GitHub Theme

vscode "bierner.markdown-checkbox" # Markdown Checkboxes
vscode "bierner.markdown-footnotes" # Markdown Footnotes
vscode "bierner.markdown-emoji" # Markdown Emoji
vscode "bierner.markdown-yaml-preamble" # Markdown YAML Preamble
vscode "bierner.markdown-mermaid" # Markdown Preview Mermaid Support
vscode "bierner.github-markdown-preview" # GitHub Markdown Preview
vscode "bierner.markdown-preview-github-styles" # Markdown Preview Github Styling

#   S o   l o n g ,   f o l k s ! 

#	Brewfile
#	KVPB's Brewfile
#
#	Karl V. P. B. `kvpb`	Karl Thomas George West `ktgw`
#	+33 A BB BB BB BB		+1 (DDD) DDD-DDDD
#	local-part@domain		local-part@domain
#	kvpb.fr					
#	https://x.com/ktgwkvpb
#	https://github.com/kvpb

#	Copyright 2014 Karl Vincent Pierre Bertin
#
#	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
#
#	1.  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
#
#	2.  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
#
#	3.  Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
#
#	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
