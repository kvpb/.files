<p align='center'><b>Karl Bertin's</b></p>
<h1 align='center'><code>.files</code> (<i>DOT-FILES</i>)</h1>
<p align='center'><b>Runcoms, Configuration files, Setups, Scripts & Templates</b></p>

- - -

# `.macosx`, `.osx` & `.macos` ('_`.acos`_')

<!--**'`.acos`':**
- [ ] `.macosx10411`
- [ ] `.macosx1068`
- [x] `.osx1095`
- [x] `.osx10105`
- [ ] `.macos1013`-->

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

- - -

# _Random Password Generator_<br>`RPwG.rb`

<p align='center'><a href='https://github.com/kvpb/.files/blob/master/lib/scpt/RPwG.rb'><img src='https://gist.githack.com/kvpb/543e66fc06e322658f5877e9e2f77cda/raw/08ecb3022f7c7de3c1a16b05e59af04b92e19af5/RPwG.svg'></a></p>

#### What-is

A program, written in Ruby, which pseudorandomly generates passwords.

#### How-to

**_UNIX_ & _Linux_:**  
&nbsp;&nbsp;0.&nbsp;&nbsp;[Download _Ruby_,](https://www.ruby-lang.org/en/downloads/) and install it.  
&nbsp;&nbsp;1.&nbsp;&nbsp;[Download _RPwG_.](https://github.com/kvpb/.files/blob/master/lib/scpt/RPwG.rb)  
&nbsp;&nbsp;2.&nbsp;&nbsp;Launch a terminal emulator, eg _Terminal_ or _GNOME Terminal_.  
&nbsp;&nbsp;3.&nbsp;&nbsp;Type '`ruby `' (with a trailing space after 'ruby'), drag and drop the `RPwG.rb` file, and press Enter.  
&nbsp;&nbsp;4.&nbsp;&nbsp;Follow the script's instructions on the terminal, then copy and paste the resulting password.

~~**_MS-DOS_:**~~  
&nbsp;&nbsp;Do yourself a favor: either get a Linux PC or a Mac.

- - -

# `Text Substitutions.plist`

<!--**`Text Substitutions.plist`:**
| Replace | With |
| --- | --- |
|  |  |-->

#### What-is

_macOS_ text substitutions (list of abbreviations to automatically replace by words).

**NB:** This works with _macOS_ software that use it, eg _TextEdit_, but I does not with _Word for Mac 2011_.

#### How-to

1. [Download `Text Substitutions.plist`.](https://raw.githack.com/kvpb/.files/master/lib/plist/Text%20Substitutions.plist)  
2. Launch _Finder_ then go to the current user's `Downloads` folder.  
3. Launch _System Preferences_ then go to Keyboard and then Text.  
4. Drag `Text Substitutions.plist` from the _Finder_ window and drop it to _System Preferences_ window's table-like list.

- - -

# _Kabe's Scratching System_<br>`flashcardsstructures.docx`,<br>`uenctcnyyyymmdd.docx`,<br>`Forename_Surname_UEN_GN_Fiche_de_lecture.docx`,<br>`Forename_Surname_UEN_GN_Memoire.docx`,<br>`notetakingstructures.docx`,<br>`notetakingsystem.docx` &<br>`name.docx`

<p align='center'><a=href='https://github.com/kvpb/.files/raw/master/notetakingsystem.docx'><img src='https://gist.githack.com/kvpb/d09c287b1d3c8e77bb9897db657938d4/raw/54cdac0b8ffad36d9ade790cfa53d138c6867412/karlbertinsscratchingsystemfrontcover.svg'></a>

#### What-is

The scratching system I built at university for better cleaner faster note-taking. This read-me has been written following these guidelines.

**NB:** If you have any suggestion to improve it, feel free to jump in, express yourself, let loose --- open an issue or contact me via _Facebook_. You're always welcome.

- - -

# _Scripts_<br>`scpt/`

<!--
**`scpt/`**:
- [ ] `InstallCommandLineTools.sh` 'Install Command Line Tools' Mac shell script
- [x] ~~`InstallGitforMac.sh` 'Install Git for Mac' shell script~~
- [x] ~~`Installfswatch.sh` 'Install fswatch' Mac shell script~~
- [x] ~~`Installmas-cli.sh` 'Install mas-cli' Mac shell script~~
- [x] ~~`InstallRAR550forMacOSX.sh` 'Install RAR 5.50 for Mac OS X' shell script~~
- [x] ~~`InstallHomebrew.sh` 'Install Homebrew' Mac shell script~~
- [ ] `InstallHomebrewBundle.sh` 'Install homebrew-bundle' Mac shell script
- [ ] `InstallrbenvHomebrew.sh` 'Install rbenv Homebrew' Mac shell script
- [ ] `InstallpyenvHomebrew.sh` 'Install pyenv Homebrew' Mac shell script
- [ ] `InstallhtopHomebrew.sh` 'Install htop Homebrew' Mac shell script
- [x] ~~`InstallUnRarX22.sh` 'Install UnRARX 2.2' Mac shell script~~
- [x] ~~`InstallXLD.sh` 'Install XLD' Mac shell script~~
- [ ] `InstallJumpcut.sh` 'Install Jumpcut' Mac shell script
- [ ] `InstallSizeUp.sh` 'Install SizeUp' Mac shell script
- [ ] `InstallFlux.sh` 'Install f.lux Mac' shell script
- [ ] `InstallOnyX.sh` 'Install OnyX' Mac shell script
- [x] ~~`InstalliTunes1264.sh` 'Install iTunes 12.6.4' Mac shell script~~
- [x] ~~`InstallAppZapper.sh` 'Install AppZapper' Mac shell script~~
- [ ] `InstallGPGSuite.sh` 'Install GPG Suite Mac' shell script
- [ ] `InstallPaparazzi.sh` 'Install Paparazzi!' Mac shell script
- [ ] `InstallTransmission.sh` 'Install Transmission Mac' shell script
- [ ] `InstallJDownloader2.sh` 'Install JDownloader2 Mac' shell script
- [x] ~~`InstallSFMono.sh` 'Install SF Mono' shell script~~
- [x] ~~`InstallSFMonoFromMac.sh` 'Install SF Mono from Mac' Mac shell script~~
- [x] ~~`InstallSanFrancisco.sh` 'Install San Francisco' Mac shell script~~
- [x] ~~`InstallSanFranciscoCompact.sh` 'Install San Francisco Compact' Mac shell script~~
- [ ] `InstallVMwareFusion8` 'Install VMware Fusion 8' Mac shell script
- [ ] `InstallPsCC.sh` 'Install Photoshop CC (14.0) Mac' shell script
- [ ] `InstallPsCS6.sh` 'Install Photoshop CS6 Extended Mac' shell script
- [ ] `InstallAiCC.sh` 'Install Illustrator CC (17.0) Mac' shell script
- [ ] `InstallAiCS6.sh` 'Install Illustrator CS6 Mac' shell script
- [ ] `InstallLr7.sh` 'Install Photoshop Lightroom 7 Mac' shell script
- [ ] `InstallLr6.sh` 'Install Photoshop Lightroom 6 (CC 2015) Mac' shell script
- [ ] `InstallOffice2016forMac.sh` 'Install Office 2016 for Mac' shell script
- [ ] `InstallOffice2011forMac.sh` 'Install Office 2011 for Mac' shell script
- [ ] `InstallSketch.sh` 'Install Sketch' Mac shell script
- [x] ~~`InstallSketch344.sh` 'Install Sketch 3.4.4 [latest OS X 10.9.5 Mavericks compatible version]' Mac shell script~~
- [x] ~~`InstalliTerm2.sh` 'Install iTerm2' Mac shell script~~
- [x] ~~`InstallHyper.sh` 'Install HyperTerm' Mac shell script~~
- [ ] `InstallHyper.js` 'Install Hyper' Mac JavaScript script
- [ ] `InstallCathode.sh` 'Install Cathode' Mac shell script
- [ ] `InstallCathode203.sh` 'Install Cathode 2.0.3 (Last 10.6.X compatible version)' Mac shell script
- [ ] `InstallCathode094.sh` 'Install Cathode 0.9.4 (Last 10.5.X compatible version)' Mac shell script
- [ ] `InstallPathFinder7.sh` 'Install Path Finder 7' Mac shell script
- [ ] `InstallPathFinder6.sh` 'Install Path Finder 6' Mac shell script
- [ ] `InstallForkLift3.sh` 'Install ForkLift 3' Mac shell script
- [ ] `InstallForkLift2.sh` 'Install ForkLift 2' Mac shell script
- [x] ~~`InstallVLC.sh` 'Install VLC Mac' shell script~~
- [x] ~~`InstallSoulver.sh` 'Install Soulver' Mac shell script~~
- [x] ~~`InstallChrome.sh` 'Install Chrome Mac' shell script~~
- [x] ~~`InstallDropbox.sh` 'Install Dropbox Mac' shell script~~
- [ ] `UninstallDropbox.sh` 'Uninstall Dropbox Mac' shell script
- [x] ~~`Installdbxcli.sh` 'Install dbxcli Mac' shell script~~
- [x] ~~`InstallSpotify.sh` 'Install Spotify Mac' shell script~~
- [ ] `InstallWhatsApp.sh` 'Install WhatsApp Mac' shell script
- [ ] `InstallMessengerforMac.sh` 'Install Messenger for  Mac' shell script
- [ ] `InstallGoofy.sh` 'Install Goofy Mac' shell script
- [x] ~~`RPwG.rb` 'Random Password Generator' Ruby script~~
- [x] ~~`SetKeyboardBrightnessTo100percent.sh` 'Set keyboard brightness to max' Mac shell script~~
- [x] ~~`SetVolumeTo50percent.sh` 'Set OS volume to 50%' Mac shell script~~
- [x] ~~`SetVolumeToMuted.sh` 'Set OS volume to muted' Mac shell script~~
- [x] ~~`GetVolumeMuteStatus.sh` 'Get OS volume mute status' Mac shell script~~
- [x] ~~`NewTestFolders.sh` 'New Test Folders' Mac shell script~~
- [x] ~~`RemoveDirectoryFromUsersHome.sh` 'Remove directory from user's home' Mac shell script~~
- [x] ~~`RemoveCreativeCloudFilesFromUsersHome.sh` 'Remove Creative Cloud Files from user's home' Mac shell script~~
- [ ] `DeleteChromeSuggestions.sh` 'Delete Chrome Mac suggestions' shell script
- [x] ~~`InstallGunGodzMac.sh` 'Install Gun Godz Mac' shell script~~
- [x] ~~`InstallSuperCrateBoxOSX.sh` 'Install Super Crate Box OS X' shell script~~
- [ ] `SaveSHSH2Blobs.sh` 'Save SHSH2 blobs' Mac shell script
-->

#### What-is

A library of scripts I wrote.

<!--
#### How-to


-->

- - -

#### Thanks to

* [Mathias Bynens](https://mathiasbynens.be/) for ~~[`dotfiles/.osx`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.osx)~~ [`dotfiles/.macos`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.macos) ~~[NM.ND.2014](https://github.com/mathiasbynens/dotfiles/commit/3b4eb3efb692aa4d19a1e2c30c2ed9a65e9c7d8c)~~ [7.21.2016](https://github.com/mathiasbynens/dotfiles/commit/47268d92afbec69e3a7243a144a126bbd25bcf2c) and [`dotfiles/.gitconfig`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.gitconfig) [8.22.2016](https://github.com/mathiasbynens/dotfiles/commit/47268d92afbec69e3a7243a144a126bbd25bcf2c)
* [Michael Kaiser-Nyman](http://www.epicodus.com/) NM.ND.2015
* [Matt Butcher](http://technosophos.com/) NM.ND.2015
* [Mark Nichols](http://zanshin.net/) for [`dotfiles/README.markdown`](https://raw.githubusercontent.com/zanshin/dotfiles/master/README.markdown) [NM.ND.2016](https://github.com/zanshin/dotfiles/commit/02ec428566e893b765e1c34c31f330bb6531dd51)
* [Brandon Brown](https://brandonb.io/) for [`osx-for-hackers.sh`](https://gist.githubusercontent.com/brandonb927/3195465/raw/f9aa762705e6cf86cc8f3ce74b43a89eecab6f36/osx-for-hackers.sh) [6.5.2016](https://gist.github.com/brandonb927/3195465/06fe593551bc778a232584593aa462a1ce635a70)
* [Hannes Juutilainen](https://obsoletesysadmin.wordpress.com/) for [`dotfiles/bin/osx-system-defaults.sh`](https://raw.githubusercontent.com/hjuutilainen/dotfiles/master/bin/osx-system-defaults.sh) and [`dotfiles/bin/osx-user-defaults.sh`](https://raw.githubusercontent.com/hjuutilainen/dotfiles/master/bin/osx-user-defaults.sh) [7.24.2016](https://github.com/hjuutilainen/dotfiles/commit/93f33a7a5954fe63c075f43dbda688d941643d9e)
* [Andrew Wong](https://andrewwong.id.au/) for [`vim-hybrid/colors/hybrid.vim`](https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim) [8.22.2016](https://github.com/w0ng/vim-hybrid/commit/cc58baabeabc7b83768e25b852bf89c34756bf90) and [`dotfiles/osx/defaults.bash`](https://raw.githubusercontent.com/w0ng/dotfiles/master/osx/defaults.bash) [27.8.2016](https://github.com/w0ng/dotfiles/commit/98bb99e85ff175d213f2199a788411b20f483b01)
* [Michael Kühnel](http://michael-kuehnel.de/) for ['_Quick tip: Git, Mac OS X and german umlauts (umlaute)_'](http://michael-kuehnel.de/git/2014/11/21/git-mac-osx-and-german-umlaute.html) [8.22.2016](https://github.com/mischah/dotfiles/commit/f2ab1a8bb27a6dc944e2abd991f499e7928aef0d)
* [Chris Gerke](https://www.linkedin.com/in/chrisgerke) for [`applekeyboard`](https://gist.githubusercontent.com/cgerke/e5500f93cd5edf05084c/raw/18c4513d662ffc636eba56f854b5e3b817c4bf51/applekeyboard) [2017.2.16 @ 10:52](https://gist.github.com/cgerke/e5500f93cd5edf05084c/18c4513d662ffc636eba56f854b5e3b817c4bf51)
* [Chris White](https://github.com/christopherdwhite) for [his 2017.6.26 comment on commit 398496c](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#comments) [2017.12.2, 15:45:0](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#commitcomment-22753491)
* [Simon Fredsted](https://simonfredsted.com/) for ['_How to use Apple's SF Mono font in your editor_'](https://simonfredsted.com/1438) [2018.1.2, 13:35:58](https://web.archive.org/save/https://simonfredsted.com/1438)

#### Author

<p align='center'><a href='http://karlbertin.com/'><img src='https://gist.githack.com/kvpb/bfed748ac5c509985c89ea613a2bfd02/raw/8c0b311b7c848fabddf61672ba6bb72c8754fed9/karlbertinssymbol.svg'></a><br>
<b>Karl 'Kabe' Bertin `kvpb`</b><br> <!-- Neither `<span style='font-variant: small-caps;'>Bertin</span>` nor `B<small>ERTIN</small>` work on GitHub. -->
<a href='https://www.linkedin.com/in/karlbertin'>LinkedIn</a> | <a href='https://www.facebook.com/karlbertin'>Facebook</a> | <a href='https://www.instagram.com/karlbertin/'>Instagram</a></p>

**Ed:** Whether you thank me or not, please credit the people I took code from.

<!--**PS:** -->
