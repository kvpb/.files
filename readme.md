<p align='center'><b>Karl Bertin's</b></p>
<h1 align='center'><code>.files</code> (<b><i>DOTFILES</i></b>)</h1>
<p align='center'><b>Runcoms, Configuration Files, Setups, Scripts, Templates & Hacks</b></p>

- - -

# `.macosx`, `.osx`, `.macos` & `.ios` (`.acos`) ![platform](https://gistcdn.githack.com/kvpb/e55c254ded3bc5eac9bc4f29c78ec75c/raw/3ed1cca704de2cb968baa5fabaf3eec5921d3a01/apple-F6F6F6D5E1ED1E72F21AD5FD-madeona-1AD5FD1E72F2-mac-F6F6F6D5E1ED.svg)

#### Where-is
<details><summary><code>.files/</code></summary>

- [x] `.acos`
- [ ] `.macosx104`
- [ ] `.macosx106`
- [x] `.osx109`
- [x] `.osx1010`
- [x] ~~`.macos1013`~~
- [ ] `.ios`
</details>

#### What-is

Apple computers operating systems configuration scripts family.

**NB:** Don't hesitate to help me finding new hidden preferences with `defaults read`! You'll get full credits for that, of course.

#### How-to

**NB:** Do not execute these scripts as root! To still run any of these scripts as root, replace `/Users/${USER}` with `${HOME}`.

Launch a terminal emulator, e.g. [Terminal](https://web.archive.org/web/20190326164259/https://support.apple.com/guide/terminal/welcome/mac) or [MTerminal](https://web.archive.org/web/20141020160524/http://cydia.saurik.com/package/com.officialscheduler.mterminal/), then enter this:

```sh
cd /Users/${USER} && /bin/bash <(curl -fsSL https://raw.githubusercontent.com/kvpb/.files/master/.acos)
```
<!--&nbsp;&nbsp;**macOS 10.13 High Sierra:**

```sh
cd /Users/${USER} && /bin/bash <(curl -fsSL https://raw.githubusercontent.com/kvpb/.files/master/.macos1013)
```

&nbsp;&nbsp;**OS X 10.10.5 Yosemite:**

```sh
cd /Users/${USER} && curl -fsS -J -L -H 'Accept: application/octet-stream' https://raw.githubusercontent.com/kvpb/.files/master/.osx1010 -o SetUpOSX.sh && chmod +x SetUpOSX.sh && /bin/bash SetUpOSX.sh
```

&nbsp;&nbsp;**OS X 10.9.5 Mavericks:**

```sh
cd /Users/${USER} && curl -fsS -J -L -H 'Accept: application/octet-stream' https://raw.githubusercontent.com/kvpb/.files/master/.osx109 -o SetUpOSX.sh && chmod +x SetUpOSX.sh && /bin/bash SetUpOSX.sh
```

&nbsp;&nbsp;~~**Mac OS X 10.6.8 Snow Leopard:**~~

```
cd /Users/${USER} && curl -fsS -J -L -H 'Accept: application/octet-stream' https://raw.githubusercontent.com/kvpb/.files/master/.macosx106 -o SetUpMacOSX.sh && chmod +x SetUpMacOSX.sh && /bin/bash SetUpMacOSX.sh
```

&nbsp;&nbsp;~~**Mac OS X 10.4.11 Tiger:**~~

```
cd /Users/${USER} && curl -fsS -J -L -H 'Accept: application/octet-stream' https://raw.githubusercontent.com/kvpb/.files/master/.macosx104 -o SetUpMacOSX.sh && chmod +x SetUpMacOSX.sh && /bin/bash SetUpMacOSX.sh
```

&nbsp;&nbsp;~~**iOS:**~~
```
cd ${HOME} && /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/kvpb/.files/master/.ios)"
```-->

- - -

# **VIM Initializations**<br>`.vimrc` & `.vim/`

#### Where-is
<details><summary><code>.files/</code></summary>

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

- ~~[ ] Write a 'minimaximal' VIM color scheme which uses as few colors as efficiently as possible.~~
  - ~~[ ] Write or rewrite an up-to-date true GitHub color scheme with a dark mode.~~

- - -

# **Scripts**<br>`scpt/`

#### Where-is
<details><summary><code>.files/</code><code>lib/</code><code>scpt/</code></summary>

- [x] `AddLoginItems.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg) ![language](https://img.shields.io/badge/-AppleScript-gray.svg) <!-- What's almost dumber than Apple's PLIST in binaries in SQLite3 DB? AaappllleScriiipt iiin BAAASH Scriiipt! -->
- [x] `GetLoginItemsList.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg) ![language](https://img.shields.io/badge/-AppleScript-gray.svg)
- [x] `GetApplicationsPOSIXPaths.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg) ![language](https://img.shields.io/badge/-AppleScript-gray.svg)
- [x] `SetKeyboardBrightnessTo100percent.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg) ![language](https://img.shields.io/badge/-AppleScript-gray.svg)
- [x] `SetVolumeTo50percent.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg) ![language](https://img.shields.io/badge/-AppleScript-gray.svg)
- [x] `SetVolumeToMuted.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg) ![language](https://img.shields.io/badge/-AppleScript-gray.svg)
- [x] `GetVolumeMuteStatus.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg) ![language](https://img.shields.io/badge/-AppleScript-gray.svg)
- [ ] `InstallBASH.sh`
  - [x] `InstallBASH3257.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] ~~`InstallFISH.sh`~~ ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallXQuartz.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![firmware](https://img.shields.io/badge/firmware-Mac%20OS%20X%2010.5%2B-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallXcodeCommandLineTools.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallGit.sh` ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `Installfswatch.sh` ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] ~~`Installmas-cli.sh`~~ ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstallRAR.sh`
  - [x] `InstallRAR550.sh` ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] ~~`InstallHomebrew.sh`~~ ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) <!--![firmware](https://img.shields.io/badge/firmware-Linux-black.svg)--> ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstallUnRARX.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [x] `InstallUnRarX22.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallXLD.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstallJumpcut.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [ ] `InstallSizeUp.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [ ] `InstallFlux.sh`
- [ ] `InstallOnyX.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [ ] `InstalliTunes.sh`
	- [x] `InstalliTunes1265.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallAppZapper.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstallGPGSuite.sh`
- [ ] `InstallPaparazzi.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [ ] `InstallTransmission.sh`
- [ ] `InstallJDownloader2.sh`
- [ ] `InstallSanFranciscoFontFamily.sh`
  - [x] `InstallSanFrancisco.sh` ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
  - [x] `InstallSanFranciscoCompact.sh` ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
  - [x] `InstallSFMono.sh` ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![firmware](https://img.shields.io/badge/-Ubuntu-orange.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstallVMwareFusion8.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
- [ ] ~~`InstallPhotoshop.sh`~~
  - [ ] ~~`InstallPsCS6.sh`~~
- [ ] ~~`InstallIllustrator.sh`~~
  - [ ] ~~`InstallAiCS6.sh`~~
- [ ] ~~`InstallPhotoshopLightroom.sh`~~
  - [ ] ~~`InstallLr7.sh`~~
  - [ ] ~~`InstallLr6.sh`~~
- [ ] ~~`InstallOffice.sh`~~
  - [ ] ~~`InstallOffice2016forMac.sh`~~ ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.10%20Yosemite-white.svg)
  - [ ] ~~`InstallOffice2011forMac.sh`~~ ![firmware](https://img.shields.io/badge/firmware-Mac%20OS%20X-white.svg)
- [ ] `InstallSketch.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [x] ~~`InstallSketch344.sh`~~ ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallInkscape.sh` ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `InstalliTerm2.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [x] `InstalliTerm2OS108Plus.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.8%20Mountain%20Lion-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] ~~`InstallHyper.sh`~~ ![firmware](https://img.shields.io/badge/firmware-macOS-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
  - [ ] ~~`InstallHyper.js`~~ ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-JavaScript-yellow.svg)
- [ ] `InstallCathode.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [ ] ~~`InstallCathode203.sh`~~
  - [ ] ~~`InstallCathode094.sh`~~
- [ ] `InstallPathFinder.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [ ] ~~`InstallPathFinder7.sh`~~
  - [ ] ~~`InstallPathFinder6.sh`~~
- [ ] `InstallForkLift.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg)
  - [ ] ~~`InstallForkLift3.sh`~~
  - [ ] ~~`InstallForkLift2.sh`~~
- [x] `InstallVLC.sh` ![firmware](https://img.shields.io/badge/firmware-Mac%20OS%20X-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallSoulver.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] ~~`InstallChrome.sh`~~ ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallDropbox.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `PatchDropboxHackedOSXAccessibility.sh` ![hardware](https://img.shields.io/badge/hardware-Mac-1AD5FD.svg) ![firmware](https://img.shields.io/badge/firmware-OS%20X-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `UninstallDropbox.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg)
- [x] `Installdbxcli.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallSpotify.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] ~~`InstallWhatsApp.sh`~~
- [ ] ~~`InstallGoofy.sh`~~
- [x] `RPwG.rb` ![language](https://img.shields.io/badge/language-Ruby-red.svg)
- [x] `CharacterCount.rb` ![language](https://img.shields.io/badge/language-Ruby-red.svg)
- [x] `NewTestFolders.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `DeleteCreativeCloudFilesFromUserHome.sh` ![firmware](https://img.shields.io/badge/firmware-OS%20X%2010.9%20Mavericks-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] ~~`DeleteChromeSuggestions.sh`~~
- [x] `ListMacAppStoreApplications.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `ListNonMacAppStoreApplications.sh` ![platform](https://img.shields.io/badge/for-Mac-1AD5FD.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [ ] `SaveSHSH2Blobs.sh`
- [x] `SaveLatestSHSH2Blobs.sh` ![firmware](https://img.shields.io/badge/firmware-Mac%20OS%20X-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallGunGodz.sh` ![firmware](https://img.shields.io/badge/firmware-Mac%20OS%20X-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
- [x] `InstallSuperCrateBox.sh` ![firmware](https://img.shields.io/badge/firmware-Mac%20OS%20X-white.svg) ![language](https://img.shields.io/badge/language-UNIX%20Shell%20Script-brightgreen.svg)
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
<details><summary><code>.files/</code></summary>

- [x] `Text Substitutions.plist`
</details>

#### What-is

macOS text substitutions (list of abbreviations to automatically replace by words).

**NB:** This works with macOS software that use it, e.g. TextEdit, but I does not with Word for Mac 2011.

#### How-to

1. [Download `Text Substitutions.plist`.](https://rawcdn.githack.com/kvpb/.files/844adc9321a218f5b0089f6d1e2303ef272f271e/Text%20Substitutions.plist)  
2. Launch Finder, then go to the current user's `Downloads` folder.  
3. Launch System Preferences, then go to Keyboard and then Text.  
4. Drag `Text Substitutions.plist` from the Finder window, and drop it to the table-like list of the window of System Preferences.

- - -

# **Random Password Generator**<br>`RPwG.rb`

<p align='center'><a href='https://github.com/kvpb/.files/blob/master/lib/scpt/RPwG.rb'><img src='https://gist.githack.com/kvpb/543e66fc06e322658f5877e9e2f77cda/raw/08ecb3022f7c7de3c1a16b05e59af04b92e19af5/RPwG.svg'></a></p>

#### Where-is
<details><summary><code>.files/</code><code>lib/</code><code>scpt/</code></summary>

- [x] `RPwG.rb`
</details>
<!--<details><summary><code>.files/</code></summary>
<details><summary open='open'>&nbsp;&nbsp;<code>lib/</code></summary>
<details><summary open='open'>&nbsp;&nbsp;&nbsp;&nbsp;<code>scpt/</code></summary>

- [x] `RPwG.rb`
</details>
</details>
</details>-->

#### What-is

A program, written in Ruby, which pseudorandomly generates passwords.

#### How-to

**UNIX & Linux:**  
&nbsp;&nbsp;0.&nbsp;&nbsp;[Download Ruby,](https://www.ruby-lang.org/en/downloads/) and install it.  
&nbsp;&nbsp;1.&nbsp;&nbsp;[Download RPwG.](https://github.com/kvpb/RPwG/releases/tag/1.10)  
&nbsp;&nbsp;2.&nbsp;&nbsp;Launch a terminal emulator, e.g. [Terminal](https://web.archive.org/web/20190326164259/https://support.apple.com/guide/terminal/welcome/mac) or [GNOME Terminal](https://web.archive.org/web/20130207013917/http://help.gnome.org/users/gnome-terminal/stable/).  
&nbsp;&nbsp;3.&nbsp;&nbsp;Type '`ruby `' (with a trailing space after 'ruby'), drag and drop the `RPwG.rb` file, and press Enter.  
&nbsp;&nbsp;4.&nbsp;&nbsp;Follow the script's instructions on the terminal, then copy and paste the resulting password.

~~**MS-DOS:**~~  
&nbsp;&nbsp;Do yourself a favor: either get a Linux PC or a Mac.

- - -

# **Karl Bertin's Notetaking System**

<!--<p align='center'><a=href='https://github.com/kvpb/.files/raw/master/notetakingsystem.docx'><img src='https://gist.githack.com/kvpb/d09c287b1d3c8e77bb9897db657938d4/raw/54cdac0b8ffad36d9ade790cfa53d138c6867412/karlbertinsscratchingsystemfrontcover.svg'></a>-->

#### Where-is
<details><summary><code>.files/</code></summary>

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

**NB:** If you have any suggestion to improve it, feel free to jump in, express yourself, let loose--- open an issue or contact me. You're always welcome.

- - -

#### Thanks to

* [Mathias Bynens](https://mathiasbynens.be/) for ~~[`dotfiles/.osx`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.osx)~~ [`dotfiles/.macos`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.macos) ~~[NM.ND.2014](https://github.com/mathiasbynens/dotfiles/commit/3b4eb3efb692aa4d19a1e2c30c2ed9a65e9c7d8c)~~ [7.21.2016](https://github.com/mathiasbynens/dotfiles/commit/47268d92afbec69e3a7243a144a126bbd25bcf2c) and [`dotfiles/.gitconfig`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.gitconfig) [8.22.2016](https://github.com/mathiasbynens/dotfiles/commit/47268d92afbec69e3a7243a144a126bbd25bcf2c)
* [Michael Kaiser-Nyman](http://www.epicodus.com/) NM.ND.2015
* [Matt Butcher](http://technosophos.com/) NM.ND.2015
* [Mark Nichols](http://zanshin.net/) for [`dotfiles/README.markdown`](https://raw.githubusercontent.com/zanshin/dotfiles/master/README.markdown) [NM.ND.2016](https://github.com/zanshin/dotfiles/commit/02ec428566e893b765e1c34c31f330bb6531dd51)
* [Brandon Brown](https://brandonb.io/) for [`osx-for-hackers.sh`](https://gist.githubusercontent.com/brandonb927/3195465/raw/f9aa762705e6cf86cc8f3ce74b43a89eecab6f36/osx-for-hackers.sh) [6.5.2016](https://gist.github.com/brandonb927/3195465/06fe593551bc778a232584593aa462a1ce635a70)
* [Hannes Juutilainen](https://obsoletesysadmin.wordpress.com/) for [`dotfiles/bin/osx-system-defaults.sh`](https://raw.githubusercontent.com/hjuutilainen/dotfiles/master/bin/osx-system-defaults.sh) and [`dotfiles/bin/osx-user-defaults.sh`](https://raw.githubusercontent.com/hjuutilainen/dotfiles/master/bin/osx-user-defaults.sh) [7.24.2016](https://github.com/hjuutilainen/dotfiles/commit/93f33a7a5954fe63c075f43dbda688d941643d9e)
* [Kamil Stachowski](https://www.vim.org/account/profile.php?user_id=15489) for [`corporation.vim`](https://www.vim.org/scripts/download_script.php?src_id=9465) [2016.NM.ND](https://web.archive.org/web/20200208141740/https://www.vim.org/scripts/download_script.php?src_id=9465)
* [Andrew Wong](https://andrewwong.id.au/) for [`vim-hybrid/colors/hybrid.vim`](https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim) [8.22.2016](https://github.com/w0ng/vim-hybrid/commit/cc58baabeabc7b83768e25b852bf89c34756bf90) and [`dotfiles/osx/defaults.bash`](https://raw.githubusercontent.com/w0ng/dotfiles/master/osx/defaults.bash) [27.8.2016](https://github.com/w0ng/dotfiles/commit/98bb99e85ff175d213f2199a788411b20f483b01)
* [Michael Kühnel](http://michael-kuehnel.de/) for [_Quick tip: Git, Mac OS X and german umlauts (umlaute)_](https://web.archive.org/web/20141206131949/https://michael-kuehnel.de/git/2014/11/21/git-mac-osx-and-german-umlaute.html) [8.22.2016](https://github.com/mischah/dotfiles/commit/f2ab1a8bb27a6dc944e2abd991f499e7928aef0d)
* [Chris Gerke](https://www.linkedin.com/in/chrisgerke) for [`applekeyboard`](https://gist.githubusercontent.com/cgerke/e5500f93cd5edf05084c/raw/18c4513d662ffc636eba56f854b5e3b817c4bf51/applekeyboard) [2017.2.16 @ 10:52](https://gist.github.com/cgerke/e5500f93cd5edf05084c/18c4513d662ffc636eba56f854b5e3b817c4bf51)
* [Chris White](https://github.com/christopherdwhite) for [his 2017.6.26 comment on commit 398496c](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#comments) [2017.12.2, 15:45:0](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#commitcomment-22753491)
* [Simon Fredsted](https://simonfredsted.com/) for [_How to use Apple's SF Mono font in your editor_](https://web.archive.org/web/20190317135558/https://simonfredsted.com/1438) [2018.1.2, 13:35:58](https://web.archive.org/save/https://simonfredsted.com/1438)
* [Mark Vincze](https://blog.markvincze.com) for [_Download artifacts from a latest GitHub release with bash and PowerShell_](https://web.archive.org/web/20180131223312/https://blog.markvincze.com/download-artifacts-from-a-latest-github-release-in-sh-and-powershell/) 2018.01.31
* [Paul Dickson \``MrP`\`](https://web.archive.org/web/20180921074452/https://www.jamf.com/jamf-nation/users/9931/mrp) for [his script to deny websites to access the camera, microphone, location and notifications](https://www.jamf.com/jamf-nation/discussions/26028/programatic-configuration-of-safari-11-websites-preferences-tab#responseChild157039) [2019.05.04, 15:30:00](https://web.archive.org/web/20190504131334/https://www.jamf.com/jamf-nation/discussions/26028/programatic-configuration-of-safari-11-websites-preferences-tab#responseChild157039)
* [Emmanuel Longeau \``elongeau`\`](https://github.com/elongeau) for [his FR AZERTY keyboard layout numeric key maps](https://github.com/elongeau/dotfiles2/blob/fccda38130c519ed8daba12c2c85f9f222ea4d02/.vimrc#L11-L22) [2019.06.03, 18:30:00](https://github.com/elongeau/dotfiles2/commit/cbe6235d34c4bde6f303619e4ce8eb518b44dadb#diff-4e12c6a37ff2cbb2c93d1b33324a6051)
* [Lauri 'Lri' Ranta](http://lri.me/) for [their answer about Mac custom key bindings](https://web.archive.org/web/20130203125715/https://superuser.com/questions/463456/how-to-configure-keyboard-shortcuts-for-special-characters-on-os-x#463517) [2019.06.14, 14:30:00](https://web.archive.org/web/20190614130455/https://superuser.com/questions/463456/how-to-configure-keyboard-shortcuts-for-special-characters-on-os-x#463517)
* [Jacob Rus](https://www.hcs.harvard.edu/~jrus/) for [_Customizing The Cocoa Text System_](https://web.archive.org/web/20060412153805/http://www.hcs.harvard.edu/~jrus/Site/Cocoa%20Text%20System.html) [2019.06.14, 14:31:00](https://web.archive.org/web/20190614131351/http://www.hcs.harvard.edu/~jrus/Site/Cocoa%20Text%20System.html)
* [André Pang](http://algorithm.com.au) for [`DefaultKetBinding.dict`](https://web.archive.org/web/20041104054838/http://www.algorithm.com.au/files/mac_os_x/DefaultKeyBinding.dict) [2019.06.14, 14:33:00](https://web.archive.org/web/20190614132419/http://algorithm.com.au/blog/files/54a269e385916faedf9560b7fd97a50c-279.html)
* [Ryan P. C. McQuen](https://ryanpcmcquen.org/) for [`true-monochrome_vim/colors/true-monochrome.vim`](https://raw.githubusercontent.com/ryanpcmcquen/true-monochrome_vim/master/colors/true-monochrome.vim) [2020.01.24](https://github.com/ryanpcmcquen/true-monochrome_vim/commit/e1bcbcf9deca4527ed19bb5cb1ed10fe1cd6b9e8#diff-9fb420887ac445c338b9ea01e7d7ed4b)
* [Julien Castelain](http://julien.js.org/) for [`vim-colors-green/colors/green.vim`](https://raw.githubusercontent.com/julien/vim-colors-green/master/colors/green.vim) [2020.01.24](https://github.com/julien/vim-colors-green/commit/c2ab216a1f8e9d15ddf25135200048326a76394b#diff-d8165931f5472490634f50524de08eca)
* [Charlie Gunyon](http://charlieg.net/) for [`amber/colors/amber.vim`](https://raw.githubusercontent.com/camgunz/amber/master/colors/amber.vim) [2020.01.24](https://github.com/camgunz/amber/commit/23d8e7a53e39e31c01c4fc1e353d95781fa08e49#diff-b3098a38cdf626efc0cc5ddbb858c1c4)
* [Cormac Relf](https://github.com/cormacrelf) for [`vim-colors-github/colors/github.vim`](https://raw.githubusercontent.com/cormacrelf/vim-colors-github/master/colors/github.vim) [2020.01.24](https://github.com/cormacrelf/vim-colors-github/commit/acb712c76bb73c20eb3d7e625a48b5ff59f150d0#diff-451fb194f8486978732fecc575e54723)

#### Author

<p align='center'><a href='http://karlbertin.com/'><img src='https://gist.githack.com/kvpb/bfed748ac5c509985c89ea613a2bfd02/raw/8c0b311b7c848fabddf61672ba6bb72c8754fed9/karlbertinssymbol.svg'></a><br>
<b>Karl V. P. Bertin `<code>kvpb</code>`</b><br> <!-- Neither `<span style='font-variant: small-caps;'>Bertin</span>` nor `B<small>ERTIN</small>` work on GitHub. -->
<a href='https://www.linkedin.com/in/karlbertin'>LinkedIn</a> | <a href='https://www.instagram.com/karlbertin/'>Instagram</a> | <a href='https://vm.tiktok.com/ZSwAmcFh/'>TikTok</a></p>

<!--**Ed:** --><!--**PS:** -->