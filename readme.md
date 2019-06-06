<p align='center'><b>Karl Bertin's</b></p>
<h1 align='center'><code>.files</code> (<i>DOT-FILES</i>)</h1>
<p align='center'><b>Runcoms, Configuration files, Setups, Scripts & Templates</b></p>

- - -

# `.macosx`, `.osx`, `.macos` & `.ios` ('_`.acos`_') ![platform](https://gistcdn.githack.com/kvpb/e55c254ded3bc5eac9bc4f29c78ec75c/raw/3ed1cca704de2cb968baa5fabaf3eec5921d3a01/apple-F6F6F6D5E1ED1E72F21AD5FD-madeona-1AD5FD1E72F2-mac-F6F6F6D5E1ED.svg)

#### Where-is
<details><summary><b><code>.files/</code></b></summary>

- [ ] `.macosx104`
- [ ] `.macosx106`
- [x] `.osx109`
- [x] `.osx1010`
- [x] `.macos1013`
- [ ] `.ios`
</details>

#### What-is

Apple computers operating systems configuration scripts family.

**NB:** Don't hesitate to help me finding new hidden preferences with `defaults read`! You'll get full credits for that, of course.

#### How-to

**NB:** Do not execute these scripts as root! To still run any of these scripts as root, replace `/Users/${USER}` with `${HOME}`.

Launch a terminal emulator, eg _Terminal_ or _iTerm2_, then enter this:

&nbsp;&nbsp;**_macOS 10.13 High Sierra_:**

```sh
cd /Users/${USER} && /bin/bash <(curl -fsSL https://raw.githubusercontent.com/kvpb/.files/master/.macos1013)
```

&nbsp;&nbsp;**_OS X 10.10.5 Yosemite_:**

```sh
cd /Users/${USER} && curl -fsS -J -L -H 'Accept: application/octet-stream' https://raw.githubusercontent.com/kvpb/.files/master/.osx10105 -o SetUpOSX.sh && chmod +x SetUpOSX.sh && /bin/bash SetUpOSX.sh
```

&nbsp;&nbsp;**_OS X 10.9.5 Mavericks_:**

```sh
cd /Users/${USER} && curl -fsS -J -L -H 'Accept: application/octet-stream' https://raw.githubusercontent.com/kvpb/.files/master/.osx1095 -o SetUpOSX.sh && chmod +x SetUpOSX.sh && /bin/bash SetUpOSX.sh
```

&nbsp;&nbsp;~~**_Mac OS X 10.6.8 Snow Leopard_:**~~

```
cd /Users/${USER} && curl -fsS -J -L -H 'Accept: application/octet-stream' https://raw.githubusercontent.com/kvpb/.files/master/.macosx1068 -o SetUpMacOSX.sh && chmod +x SetUpMacOSX.sh && /bin/bash SetUpMacOSX.sh
```

&nbsp;&nbsp;~~**_Mac OS X 10.4.11 Tiger_:**~~

```
cd /Users/${USER} && curl -fsS -J -L -H 'Accept: application/octet-stream' https://raw.githubusercontent.com/kvpb/.files/master/.macosx10411 -o SetUpMacOSX.sh && chmod +x SetUpMacOSX.sh && /bin/bash SetUpMacOSX.sh
```

&nbsp;&nbsp;~~**_iOS_:**~~
```
cd ${HOME} && /bin/sh <(curl -fsSL https://raw.githubusercontent.com/kvpb/.files/master/.ios)
```

- - -

# `.vimrc` & `.vim/`

#### Where-is
<details><summary><b><code>.files/</code></b></summary>

- [x] `.vim/`
- [x] `.vimrc`
<!--
- [x] `.bashrc` required as dependency
- [x] `.aliases` required as dependency
-->
</details>

#### What-is

My VIM setup, featuring a true TextEdit-like key mapping, including a smart hack for the FR AZERTY layout's numeric keys row from Emmanuel Longeau \``elongeau`\`.

#### To-do

- [ ] Write a 'minimaximal' VIM color scheme which uses as few colors as efficiently as possible.
  - [ ] Write or rewrite an up-to-date true GitHub color scheme with a dark mode.

- - -

# _Scripts_<br>`scpt/`

#### Where-is
<details><summary><b><code>.files/</code><code>lib/</code><code>scpt/</code></b></summary>

- [x] `AddLoginItems.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `GetLoginItemsList.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `GetApplicationsPOSIXPaths.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `SetKeyboardBrightnessTo100percent.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-AppleScript-gray.svg)
- [x] `SetVolumeTo50percent.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-AppleScript-gray.svg)
- [x] `SetVolumeToMuted.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-AppleScript-gray.svg)
- [x] `GetVolumeMuteStatus.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-AppleScript-gray.svg)
- [x] `InstallXcodeCommandLineTools.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [x] `InstallGitforMac.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `Installfswatch.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `Installmas-cli.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] ~~`InstallRAR.sh`~~
  - [x] `InstallRAR550forMacOSX.sh` ![firmware](https://img.shields.io/badge/firmware-Mac%20OS%20X-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallHomebrew.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) <!--![firmware](https://img.shields.io/badge/firmware-Linux-black.svg)--> ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstallUnRARX.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [x] `InstallUnRarX22.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallXLD.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstallJumpcut.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [ ] `InstallSizeUp.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [ ] `InstallFlux.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [ ] `InstallOnyX.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [x] `InstalliTunes1265.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallAppZapper.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstallGPGSuite.sh`
- [ ] `InstallPaparazzi.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [ ] `InstallTransmission.sh`
- [ ] `InstallJDownloader2.sh`
- [ ] `InstallSanFranciscoFontFamily.sh`
  - [x] `InstallSanFrancisco.sh` ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
  - [x] `InstallSanFranciscoCompact.sh` ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
  - [x] `InstallSFMono.sh` ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![firmware](https://img.shields.io/badge/-Linux-black.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstallVMwareFusion8` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [ ] ~~`InstallPhotoshop.sh`~~
  - [ ] `InstallPsCC.sh`
  - [ ] `InstallPsCS6.sh`
- [ ] ~~`InstallIllustrator.sh`~~
  - [ ] `InstallAiCC.sh`
  - [ ] `InstallAiCS6.sh`
- [ ] ~~`InstallPhotoshopLightroom.sh`~~
  - [ ] `InstallLr7.sh`
  - [ ] `InstallLr6.sh`
- [ ] `InstallOfficeforMac.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [ ] `InstallOffice2016forMac.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.10%20Yosemite-white.svg)
  - [ ] `InstallOffice2011forMac.sh` ![firmware](https://img.shields.io/badge/firmware-Mac%20OS%20X-white.svg)
- [ ] `InstallSketch.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [x] `InstallSketch344.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstalliTerm2.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [x] `InstalliTerm2OS108Plus.sh` ![hardware](https://img.shields.io/badge/hardware-Mac-1AD5FD.svg) ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.8%20Mountain%20Lion-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallHyperterm.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
  - [ ] `InstallHyper.js` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-JavaScript-yellow.svg)
- [ ] `InstallCathode.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [ ] `InstallCathode203.sh`
  - [ ] `InstallCathode094.sh`
- [ ] ~~`InstallPathFinder.sh`~~
  - [ ] `InstallPathFinder7.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [ ] `InstallPathFinder6.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [ ] `InstallForkLift.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [ ] `InstallForkLift3.sh`
  - [ ] `InstallForkLift2.sh`
- [x] `InstallVLC.sh` ![firmware](https://img.shields.io/badge/firmware-Mac%20OS%20X-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallSoulver.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallChrome.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallDropbox.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `UninstallDropbox.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg)
- [x] `Installdbxcli.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallSpotify.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstallWhatsApp.sh`
- [ ] `InstallGoofy.sh`
- [x] `RPwG.rb` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![firmware](https://img.shields.io/badge/-Linux-black.svg) ![language](https://img.shields.io/badge/language-Ruby-red.svg)
- [x] `CharacterCount.rb` ![firmware](https://img.shields.io/badge/-Linux-black.svg) ![language](https://img.shields.io/badge/language-Ruby-red.svg)
- [x] `NewTestFolders.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `DeleteDirectoryFromUserHome.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `DeleteCreativeCloudFilesFromUserHome.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `DeleteChromeSuggestions.sh`
- [x] `ListMacAppStoreApplications.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `ListNonMacAppStoreApplications.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `SaveSHSH2Blobs.sh`
- [x] `SaveLatestSHSH2Blobs.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallGunGodzMac.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallSuperCrateBoxOSX.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
</details>

#### What-is

A library of scripts I wrote.

<!--
#### How-to


-->

- - -

# `Text Substitutions.plist` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)

<!--**`Text Substitutions.plist`:**
| Replace | With |
| --- | --- |
|  |  |-->

#### Where-is
<details><summary><b><code>.files/</code></b></summary>

- [x] `Text Substitutions.plist`
</details>

#### What-is

_macOS_ text substitutions (list of abbreviations to automatically replace by words).

**NB:** This works with _macOS_ software that use it, eg _TextEdit_, but I does not with _Word for Mac 2011_.

#### How-to

1. [Download `Text Substitutions.plist`.](https://rawcdn.githack.com/kvpb/.files/844adc9321a218f5b0089f6d1e2303ef272f271e/Text%20Substitutions.plist)  
2. Launch _Finder_ then go to the current user's `Downloads` folder.  
3. Launch _System Preferences_ then go to Keyboard and then Text.  
4. Drag `Text Substitutions.plist` from the _Finder_ window and drop it to _System Preferences_ window's table-like list.

- - -

# _Random Password Generator_<br>`RPwG.rb`

<p align='center'><a href='https://github.com/kvpb/.files/blob/master/lib/scpt/RPwG.rb'><img src='https://gist.githack.com/kvpb/543e66fc06e322658f5877e9e2f77cda/raw/08ecb3022f7c7de3c1a16b05e59af04b92e19af5/RPwG.svg'></a></p>

#### Where-is
<details><summary><b><code>.files/</code><code>lib/</code><code>scpt/</code></b></summary>

- [x] `RPwG.rb`
</details>

#### What-is

A program, written in Ruby, which pseudorandomly generates passwords.

#### How-to

**_UNIX_ & _Linux_:**  
&nbsp;&nbsp;0.&nbsp;&nbsp;[Download _Ruby_,](https://www.ruby-lang.org/en/downloads/) and install it.  
&nbsp;&nbsp;1.&nbsp;&nbsp;[Download _RPwG_.](https://github.com/kvpb/RPwG/releases/tag/1.10)  
&nbsp;&nbsp;2.&nbsp;&nbsp;Launch a terminal emulator, eg _Terminal_ or _GNOME Terminal_.  
&nbsp;&nbsp;3.&nbsp;&nbsp;Type '`ruby `' (with a trailing space after 'ruby'), drag and drop the `RPwG.rb` file, and press Enter.  
&nbsp;&nbsp;4.&nbsp;&nbsp;Follow the script's instructions on the terminal, then copy and paste the resulting password.

~~**_MS-DOS_:**~~  
&nbsp;&nbsp;Do yourself a favor: either get a Linux PC or a Mac.

- - -

# _Karl Bertin's Notetaking System_

<!--<p align='center'><a=href='https://github.com/kvpb/.files/raw/master/notetakingsystem.docx'><img src='https://gist.githack.com/kvpb/d09c287b1d3c8e77bb9897db657938d4/raw/54cdac0b8ffad36d9ade790cfa53d138c6867412/karlbertinsscratchingsystemfrontcover.svg'></a>-->

#### Where-is
<details><summary><b><code>.files/</code></b></summary>

- [x] `flashcardsstructures.docx`
- [x] `uenctcnyyyymmdd.docx`
- [x] `Forename_Surname_UEN_GN_Fiche_de_lecture.docx`
- [x] `Forename_Surname_UEN_GN_Memoire.docx`
- [x] `notetakingstructures.docx`
- [x] `notetakingsystem.docx`
- [x] `name.docx`
</details>

#### What-is

The scratching system I built at university for better cleaner faster note-taking. This read-me has been written following these guidelines.

**NB:** If you have any suggestion to improve it, feel free to jump in, express yourself, let loose --- open an issue or contact me. You're always welcome.

- - -

#### Thanks to

* [Mathias Bynens](https://mathiasbynens.be/) for ~~[`dotfiles/.osx`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.osx)~~ [`dotfiles/.macos`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.macos) ~~[NM.ND.2014](https://github.com/mathiasbynens/dotfiles/commit/3b4eb3efb692aa4d19a1e2c30c2ed9a65e9c7d8c)~~ [7.21.2016](https://github.com/mathiasbynens/dotfiles/commit/47268d92afbec69e3a7243a144a126bbd25bcf2c) and [`dotfiles/.gitconfig`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.gitconfig) [8.22.2016](https://github.com/mathiasbynens/dotfiles/commit/47268d92afbec69e3a7243a144a126bbd25bcf2c)
* [Michael Kaiser-Nyman](http://www.epicodus.com/) NM.ND.2015
* [Matt Butcher](http://technosophos.com/) NM.ND.2015
* [Mark Nichols](http://zanshin.net/) for [`dotfiles/README.markdown`](https://raw.githubusercontent.com/zanshin/dotfiles/master/README.markdown) [NM.ND.2016](https://github.com/zanshin/dotfiles/commit/02ec428566e893b765e1c34c31f330bb6531dd51)
* [Brandon Brown](https://brandonb.io/) for [`osx-for-hackers.sh`](https://gist.githubusercontent.com/brandonb927/3195465/raw/f9aa762705e6cf86cc8f3ce74b43a89eecab6f36/osx-for-hackers.sh) [6.5.2016](https://gist.github.com/brandonb927/3195465/06fe593551bc778a232584593aa462a1ce635a70)
* [Hannes Juutilainen](https://obsoletesysadmin.wordpress.com/) for [`dotfiles/bin/osx-system-defaults.sh`](https://raw.githubusercontent.com/hjuutilainen/dotfiles/master/bin/osx-system-defaults.sh) and [`dotfiles/bin/osx-user-defaults.sh`](https://raw.githubusercontent.com/hjuutilainen/dotfiles/master/bin/osx-user-defaults.sh) [7.24.2016](https://github.com/hjuutilainen/dotfiles/commit/93f33a7a5954fe63c075f43dbda688d941643d9e)
* [Andrew Wong](https://andrewwong.id.au/) for [`vim-hybrid/colors/hybrid.vim`](https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim) [8.22.2016](https://github.com/w0ng/vim-hybrid/commit/cc58baabeabc7b83768e25b852bf89c34756bf90) and [`dotfiles/osx/defaults.bash`](https://raw.githubusercontent.com/w0ng/dotfiles/master/osx/defaults.bash) [27.8.2016](https://github.com/w0ng/dotfiles/commit/98bb99e85ff175d213f2199a788411b20f483b01)
* [Michael Kühnel](http://michael-kuehnel.de/) for ['_Quick tip: Git, Mac OS X and german umlauts (umlaute)_'](https://web.archive.org/web/20141206131949/https://michael-kuehnel.de/git/2014/11/21/git-mac-osx-and-german-umlaute.html) [8.22.2016](https://github.com/mischah/dotfiles/commit/f2ab1a8bb27a6dc944e2abd991f499e7928aef0d)
* [Chris Gerke](https://www.linkedin.com/in/chrisgerke) for [`applekeyboard`](https://gist.githubusercontent.com/cgerke/e5500f93cd5edf05084c/raw/18c4513d662ffc636eba56f854b5e3b817c4bf51/applekeyboard) [2017.2.16 @ 10:52](https://gist.github.com/cgerke/e5500f93cd5edf05084c/18c4513d662ffc636eba56f854b5e3b817c4bf51)
* [Chris White](https://github.com/christopherdwhite) for [his 2017.6.26 comment on commit 398496c](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#comments) [2017.12.2, 15:45:0](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#commitcomment-22753491)
* [Simon Fredsted](https://simonfredsted.com/) for ['_How to use Apple's SF Mono font in your editor_'](https://web.archive.org/web/20190317135558/https://simonfredsted.com/1438) [2018.1.2, 13:35:58](https://web.archive.org/save/https://simonfredsted.com/1438)
* [Paul Dickson \``MrP`\`](https://web.archive.org/web/20180921074452/https://www.jamf.com/jamf-nation/users/9931/mrp) for [his script to deny websites to access the camera, microphone, location and notifications](https://www.jamf.com/jamf-nation/discussions/26028/programatic-configuration-of-safari-11-websites-preferences-tab#responseChild157039) [2019.05.04, 15:30:00](https://web.archive.org/web/20190504131334/https://www.jamf.com/jamf-nation/discussions/26028/programatic-configuration-of-safari-11-websites-preferences-tab#responseChild157039)
* [Emmanuel Longeau \``elongeau`\`](https://github.com/elongeau) for [his FR AZERTY keyboard layout numeric key maps](https://github.com/elongeau/dotfiles2/blob/fccda38130c519ed8daba12c2c85f9f222ea4d02/.vimrc#L11-L22) [2019.06.03, 18:30:00](https://github.com/elongeau/dotfiles2/commit/cbe6235d34c4bde6f303619e4ce8eb518b44dadb#diff-4e12c6a37ff2cbb2c93d1b33324a6051)

#### Author

<p align='center'><a href='http://karlbertin.com/'><img src='https://gist.githack.com/kvpb/bfed748ac5c509985c89ea613a2bfd02/raw/8c0b311b7c848fabddf61672ba6bb72c8754fed9/karlbertinssymbol.svg'></a><br>
<b>Karl 'Kabe' Bertin `<code>kvpb</code>`</b><br> <!-- Neither `<span style='font-variant: small-caps;'>Bertin</span>` nor `B<small>ERTIN</small>` work on GitHub. -->
<a href='https://www.linkedin.com/in/karlbertin'>LinkedIn</a> | <s><a href=''>Facebook</a></s> | <a href='https://www.instagram.com/karlbertin/'>Instagram</a> | <a href='https://www.snapchat.com/add/karlbertin'>Snapchat</a></p>

**Ed:** Whether you thank me or not, please credit the people I took code from.

<!--**PS:** -->