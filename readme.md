# `.files` (_Dot-files_)
#### Runcoms, Configuration files, Setups, Scripts & Templates

- - -

# &nbsp;&nbsp;`.macosx`, `.osx` & `.macos` ('_`.acos`_')

<!--**'`.acos`':**
- [ ] `.macosx10411`
- [ ] `.macosx1068`
- [x] `.osx1095`
- [x] `.osx10105`
- [ ] `.macos1013`-->

#### What-is

&nbsp;&nbsp;Apple computers operating systems configuration scripts family.

&nbsp;&nbsp;**NB:** Don't hesitate to help me finding new hidden preferences with `defaults read`! You'll get full credits for that, of course.

#### How-to

&nbsp;&nbsp;Launch a terminal emulator, eg _Terminal_ or _iTerm2_, then enter this:

&nbsp;&nbsp;~~**_macOS 10.13 High Sierra_:**~~

```
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

&nbsp;&nbsp;**NB:** Do not run these scripts as root! To still run any of these scripts as root, replace `/Users/${USER}` with `${HOME}`.

- - -

# &nbsp;&nbsp;_Random Password Generator_<br>&nbsp;&nbsp;[`.files/lib/scpt/`] `RPwG.rb`

<p align='center'><a href='https://github.com/kvpb/.files/blob/master/lib/scpt/RPwG.rb'><img src='https://rawgit.com/kvpb/543e66fc06e322658f5877e9e2f77cda/raw/08ecb3022f7c7de3c1a16b05e59af04b92e19af5/RPwG.svg'></a></p>

#### What-is

&nbsp;&nbsp;A program, written in Ruby, which pseudorandomly generates passwords.

#### How-to

&nbsp;&nbsp;**_UNIX_ & _Linux_:**

&nbsp;&nbsp;0.&nbsp;&nbsp;[Download _Ruby_,](https://www.ruby-lang.org/en/downloads/) and install it.

&nbsp;&nbsp;1.&nbsp;&nbsp;[Download _RPwG_.](https://github.com/kvpb/.files/blob/master/lib/scpt/RPwG.rb)

&nbsp;&nbsp;2.&nbsp;&nbsp;Launch a terminal emulator, eg _Terminal_ or _GNOME Terminal_.

&nbsp;&nbsp;3.&nbsp;&nbsp;Type '`ruby `' (with a trailing space after 'ruby'), drag and drop the `RPwG.rb` file, and press Enter.

&nbsp;&nbsp;4.&nbsp;&nbsp;Follow the script's instructions on the terminal, then copy and paste the resulting password.

&nbsp;&nbsp;~~**_MS-DOS_:**~~

&nbsp;&nbsp;Do yourself a favor: either get a Linux PC or a Mac.

- - -

# &nbsp;&nbsp;[`.files/lib/plist/`] `Text Substitutions.plist`

<!--**`Text Substitutions.plist`:**
| Replace | With |
| --- | --- |
|  |  |-->

#### What-is

&nbsp;&nbsp;_macOS_ text substitutions (list of abbreviations to automatically replace by words).

&nbsp;&nbsp;**NB:** This works with _macOS_ software that use it, eg _TextEdit_, but I does not with _Word for Mac 2011_.

#### How-to

&nbsp;&nbsp;1.&nbsp;&nbsp;[Download `Text Substitutions.plist`.](https://rawgit.com/kvpb/.files/master/lib/plist/Text%20Substitutions.plist)

&nbsp;&nbsp;2.&nbsp;&nbsp;Launch _Finder_ then go to the current user's `Downloads` folder.

&nbsp;&nbsp;3.&nbsp;&nbsp;Launch _System Preferences_ then go to Keyboard and then Text.

&nbsp;&nbsp;4.&nbsp;&nbsp;Drag `Text Substitutions.plist` from the _Finder_ window and drop it to _System Preferences_ window's table-like list.

- - -

# &nbsp;&nbsp;_Kabe's Scratching System_:<br>&nbsp;&nbsp;`flashcardsstructures.docx`,<br>&nbsp;&nbsp;`uenctcnyyyymmdd.docx`,<br>&nbsp;&nbsp;`Forename_Surname_UEN_GN_Fiche_de_lecture.docx`,<br>&nbsp;&nbsp;`Forename_Surname_UEN_GN_Memoire.docx`,<br>&nbsp;&nbsp;`notetakingstructures.docx`,<br>&nbsp;&nbsp;`notetakingsystem.docx` &<br>&nbsp;&nbsp;`name.docx`

<p align='center'><a=href='https://github.com/kvpb/.files/raw/master/notetakingsystem.docx'><img src='https://rawgit.com/kvpb/d09c287b1d3c8e77bb9897db657938d4/raw/54cdac0b8ffad36d9ade790cfa53d138c6867412/karlbertinsscratchingsystemfrontcover.svg'></a>

#### What-is

&nbsp;&nbsp;My scratching system I built at university for better cleaner faster note-taking. This read-me has been written following these guidelines.

**NB:** If you have any suggestion to improve it, feel free to jump in, express yourself, let loose --- open an issue or contact me via _Facebook_. You're always welcome.

- - -

# &nbsp;&nbsp;_Scripts_<br>&nbsp;&nbsp;[`.files/lib/`] `scpt/`

<!--
**`scpt/`**:
- [ ] `InstallCommandLineTools.sh` 'Install Command Line Tools' Mac shell script
- [x] ~~`InstallGitforMac.sh` 'Install Git for Mac' shell script~~
- [x] ~~`InstallHomebrew.sh` 'Install Homebrew' Mac shell script~~
- [ ] `InstallHomebrewBundle.sh` 'Install homebrew-bundle' Mac shell script
- [ ] `InstallJumpcut.sh` 'Install Jumpcut' Mac shell script
- [ ] `InstallSizeUp.sh` 'Install SizeUp' Mac shell script
- [ ] `InstallFlux.sh` 'Install f.lux Mac' shell script
- [ ] `InstallOnyX.sh` 'Install OnyX' Mac shell script
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
- [ ] `InstallSketch344.sh` 'Install Sketch 3.4.4 [latest OS X 10.9.5 Mavericks compatible version]' Mac shell script
- [ ] `InstalliTerm2.sh` 'Install iTerm2' Mac shell script
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
- [x] ~~`InstallChrome.sh` 'Install Chrome Mac' shell script~~
- [x] ~~`InstallDropbox.sh` 'Install Dropbox Mac' shell script~~
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
-->

#### What-is

&nbsp;&nbsp;My library of scripts I wrote.

<!--
#### How-to

&nbsp;&nbsp;
-->

- - -

#### Thanks to

* [Mathias Bynens](https://mathiasbynens.be/) for ~~[`dotfiles/.osx`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.osx)~~ [`dotfiles/.macos`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.macos) ~~_[NM.ND.2014](https://github.com/mathiasbynens/dotfiles/commit/3b4eb3efb692aa4d19a1e2c30c2ed9a65e9c7d8c)_~~ _[7.21.2016](https://github.com/mathiasbynens/dotfiles/commit/47268d92afbec69e3a7243a144a126bbd25bcf2c)_ and [`dotfiles/.gitconfig`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.gitconfig) _[8.22.2016](https://github.com/mathiasbynens/dotfiles/commit/47268d92afbec69e3a7243a144a126bbd25bcf2c)_
* [Michael Kaiser-Nyman](http://www.epicodus.com/) _NM.ND.2015_
* [Matt Butcher](http://technosophos.com/) _NM.ND.2015_
* [Mark Nichols](http://zanshin.net/) for [`dotfiles/README.markdown`](https://raw.githubusercontent.com/zanshin/dotfiles/master/README.markdown) _[NM.ND.2016](https://github.com/zanshin/dotfiles/commit/02ec428566e893b765e1c34c31f330bb6531dd51)_
* [Brandon Brown](https://brandonb.io/) for [`osx-for-hackers.sh`](https://gist.githubusercontent.com/brandonb927/3195465/raw/f9aa762705e6cf86cc8f3ce74b43a89eecab6f36/osx-for-hackers.sh) _[6.5.2016](https://gist.github.com/brandonb927/3195465/06fe593551bc778a232584593aa462a1ce635a70)_
* [Hannes Juutilainen](https://obsoletesysadmin.wordpress.com/) for [`dotfiles/bin/osx-system-defaults.sh`](https://raw.githubusercontent.com/hjuutilainen/dotfiles/master/bin/osx-system-defaults.sh) and [`dotfiles/bin/osx-user-defaults.sh`](https://raw.githubusercontent.com/hjuutilainen/dotfiles/master/bin/osx-user-defaults.sh) _[7.24.2016](https://github.com/hjuutilainen/dotfiles/commit/93f33a7a5954fe63c075f43dbda688d941643d9e)_
* [Andrew Wong](https://andrewwong.id.au/) for [`vim-hybrid/colors/hybrid.vim`](https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim) _[8.22.2016](https://github.com/w0ng/vim-hybrid/commit/cc58baabeabc7b83768e25b852bf89c34756bf90)_ and [`dotfiles/osx/defaults.bash`](https://raw.githubusercontent.com/w0ng/dotfiles/master/osx/defaults.bash) _[27.8.2016](https://github.com/w0ng/dotfiles/commit/98bb99e85ff175d213f2199a788411b20f483b01)_
* [Michael Kühnel](http://michael-kuehnel.de/) for ['_Quick tip: Git, Mac OS X and german umlauts (umlaute)_'](http://michael-kuehnel.de/git/2014/11/21/git-mac-osx-and-german-umlaute.html) _[8.22.2016](https://github.com/mischah/dotfiles/commit/f2ab1a8bb27a6dc944e2abd991f499e7928aef0d)_
* [Chris Gerke](https://www.linkedin.com/in/chrisgerke) for [`applekeyboard`](https://gist.githubusercontent.com/cgerke/e5500f93cd5edf05084c/raw/18c4513d662ffc636eba56f854b5e3b817c4bf51/applekeyboard) _[2017.2.16 @ 10:52](https://gist.github.com/cgerke/e5500f93cd5edf05084c/18c4513d662ffc636eba56f854b5e3b817c4bf51)_
* [Chris White](https://github.com/christopherdwhite) for [his 2017.6.26 comment on commit 398496c](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#comments) _[2017.12.2, 15:45:0](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#commitcomment-22753491)_
* [Simon Fredsted](https://simonfredsted.com/) for ['_How to use Apple's SF Mono font in your editor_'](https://simonfredsted.com/1438) _[2018.1.2, 13:35:58](https://web.archive.org/save/https://simonfredsted.com/1438)_

#### Author

<p align='center'><a href='http://kvpb.co/'><img src='https://rawgit.com/kvpb/b9c0737f2941542ae22b2806b66a3c19/raw/9867dde923550a08d05f3fae3a2b02905ea8345c/quickresponsecode.svg'></a><br>
<b>Karl 'Kabe' Bertin (Карл Бэртин) `kvpb`</b><br> <!-- Neither `<span style='font-variant: small-caps;'>Bertin</span>` & `<span style='font-variant: small-caps;'>Бэртин</span>` nor `B<small>ERTIN</small>` & `Б<small>ЭРТИН</small>` work on GitHub. -->
<a href='https://www.linkedin.com/in/karlbertin'>LinkedIn</a> | <a href='https://www.facebook.com/karlbertin'>Facebook</a> | <a href='https://www.instagram.com/karlbertin/'>Instagram</a></p>

**Ed:** Whether you thank me or not, please credit the people I took code from.

<!--**PS:** -->
