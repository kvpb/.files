# `.files`
#### Runcoms, Configuration files, Templates & Setups

# &nbsp;&nbsp;`.macosx`, `.osx` & `.macos`

#### What-is

&nbsp;&nbsp;Apple computers operating systems configuration scripts family.

#### How-to

&nbsp;&nbsp;Launch a terminal emulator, eg Terminal or iTerm2, then enter this:

&nbsp;&nbsp;~~**macOS 10.13 High Sierra:**~~

```
cd && git clone https://github.com/kvpb/.files.git && cd .files && ./.macos1013
```

&nbsp;&nbsp;**OS X 10.10.5 Yosemite:**

```sh
cd && git clone https://github.com/kvpb/.files.git && cd .files && ./.osx10105
```

&nbsp;&nbsp;**OS X 10.9.5 Mavericks:**

```sh
cd && git clone https://github.com/kvpb/.files.git && cd .files && ./.osx1095
```

&nbsp;&nbsp;~~**Mac OS X 10.6.8 Snow Leopard:**~~

```
cd && git clone https://github.com/kvpb/.files.git && cd .files && ./.macosx1068
```

&nbsp;&nbsp;~~**Mac OS X 10.4.11 Tiger:**~~

```
cd && git clone https://github.com/kvpb/.files.git && cd .files && ./.macosx10411
```

**NB:** Don't hesitate to help me finding new hidden preferences with `defaults read`! You'll get full credits for that, of course.

- - -

# &nbsp;&nbsp;[`.files/lib/plist/`] `Text Substitutions.plist`

#### What-is

&nbsp;&nbsp;macOS text substitutions (list of abbreviations to automatically replace by words).

&nbsp;&nbsp;**NB:** This works with macOS software that use it. It works with TextEdit, but I don't know if it works with Word for Mac 2011.

#### How-to

&nbsp;&nbsp;1.&nbsp;&nbsp;[Download `Text Substitutions.plist`.](https://rawgit.com/kvpb/.files/master/lib/plist/Text%20Substitutions.plist)

&nbsp;&nbsp;2.&nbsp;&nbsp;Launch Finder then go to current user's `Downloads` folder.

&nbsp;&nbsp;3.&nbsp;&nbsp;Launch System preferences then go to Keyboard and then Text.

&nbsp;&nbsp;4.&nbsp;&nbsp;Drag `Text Substitutions.plist` from Finder window and drop it to System preferences window's table-like list.

- - -

# &nbsp;&nbsp;`flashcardsstructures.docx`,<br>&nbsp;&nbsp;`uenctcnyyyymmdd.docx`,<br>&nbsp;&nbsp;`Forename_Surname_UEN_GN_Fiche_de_lecture.docx`,<br>&nbsp;&nbsp;`Forename_Surname_UEN_GN_Memoire.docx`,<br>&nbsp;&nbsp;`notetakingstructures.docx`,<br>&nbsp;&nbsp;`notetakingsystem.docx` &<br>&nbsp;&nbsp;`name.docx`

<p align='center'><a=href='https://github.com/kvpb/.files/raw/master/notetakingsystem.docx'><img src='https://rawgit.com/kvpb/d09c287b1d3c8e77bb9897db657938d4/raw/9bada103c3850f17e71d9c6029a3f4927eef6232/karlbertinsscratchingsystemfrontcover.svg'></a>

#### What-is

&nbsp;&nbsp;I's scratching system I built at university for better faster cleaner notetaking. This read-me has been written following these guidelines.

**NB:** If you have any suggestion to improve it, feel free to jump in, express yourself, let loose --- open an issue or contact me via Facebook. You're always welcome.

- - -

#### To-do

#### &nbsp;&nbsp;`.macosx`, `.osx` & `.macos`

- [x] Reorganize the scripts into 3 parts:
  - [x] First-party: System-wide and user-specific preferences
  - [x] Second-party: User-specific filesystem customs
  - [x] Third-party: System-wide and user-specific xenogenetic software and preferences
- [x] Reorganize the scripts by layers (my 3 parts: from firmware, kernel and drivers to applications, from important to trivial and from open standard to closed proprietary)
- [x] Remove the ACOS conf scripts that don't matter, and add those that do

#### &nbsp;&nbsp;`[.files/lib/]` `scpt/`

- [ ] Add `InstallCommandLineTools.sh` 'Install Command Line Tools' Mac shell script
- [ ] Add `InstallGitforMac.sh` 'Install Git for Mac' shell script
- [ ] Add `InstallHomebrew.sh` 'Install Homebrew' Mac shell script
- [ ] Add `InstallHomebrewBundle.sh` 'Install homebrew-bundle' Mac shell script
- [ ] Add `InstallJumpcut.sh` 'Install Jumpcut' Mac shell script
- [ ] Add `InstallSizeUp.sh` 'Install SizeUp' Mac shell script
- [ ] Add `InstallFlux.sh` 'Install f.lux Mac' shell script
- [ ] Add `InstallOnyX.sh` 'Install OnyX' Mac shell script
- [ ] Add `InstallAppZapper.sh` 'Install AppZapper' Mac shell script
- [ ] Add `InstallGPGSuite.sh` 'Install GPG Suite Mac' shell script
- [ ] Add `InstallPaparazzi.sh` 'Install Paparazzi!' Mac shell script
- [ ] Add `InstallTransmission.sh` 'Install Transmission Mac' shell script
- [ ] Add `InstallJDownloader2.sh` 'Install JDownloader2 Mac' shell script
- [ ] Add `InstallSFMono.sh` 'Install SF Mono' shell script
- [x] Add `InstallSFMonoFromMac.sh` 'Install SF Mono from Mac' Mac shell script
- [ ] Add `InstallSanFrancisco.sh` 'Install San Francisco' Mac shell script
- [ ] Add `InstallSanFranciscoCompact.sh` 'Install San Francisco Compact' Mac shell script
- [ ] Add `InstallVMwareFusion8` 'Install VMware Fusion 8' Mac shell script
- [ ] Add `InstallPsCC.sh` 'Install Photoshop CC (14.0) Mac' shell script
- [ ] Add `InstallPsCS6.sh` 'Install Photoshop CS6 Extended Mac' shell script
- [ ] Add `InstallAiCC.sh` 'Install Illustrator CC (17.0) Mac' shell script
- [ ] Add `InstallAiCS6.sh` 'Install Illustrator CS6 Mac' shell script
<!--- [ ] Add `InstallMCCS6.sh` 'Install Master Collection Creative Suite 6 Mac' shell script-->
- [ ] Add `InstallLr7.sh` 'Install Photoshop Lightroom 7 Mac' shell script
- [ ] Add `InstallLr6.sh` 'Install Photoshop Lightroom 6 (CC 2015) Mac' shell script
- [ ] Add `InstallOffice2016forMac.sh` 'Install Office 2016 for Mac' shell script
- [ ] Add `InstallOffice2011forMac.sh` 'Install Office 2011 for Mac' shell script
- [ ] Add `InstallSketch344.sh` 'Install Sketch 3.4.4 [latest OS X 10.9.5 Mavericks compatible version]' Mac shell script
- [ ] Add `InstalliTerm2.sh` 'Install iTerm2' Mac shell script
- [ ] Add `InstallCathode.sh` 'Install Cathode' Mac shell script
- [ ] Add `InstallCathode203.sh` 'Install Cathode 2.0.3 (Last 10.6.X compatible version)' Mac shell script
- [ ] Add `InstallCathode094.sh` 'Install Cathode 0.9.4 (Last 10.5.X compatible version)' Mac shell script
- [ ] Add `InstallPathFinder7.sh` 'Install Path Finder 7' Mac shell script
- [ ] Add `InstallPathFinder6.sh` 'Install Path Finder 6' Mac shell script
- [ ] Add `InstallForkLift3.sh` 'Install ForkLift 3' Mac shell script
- [ ] Add `InstallForkLift2.sh` 'Install ForkLift 2' Mac shell script
- [ ] Add `InstallVLCMediaPlayer.sh` 'Install VLC Media Player Mac' shell script
- [x] Add `InstallChrome.sh` 'Install Chrome Mac' shell script
- [x] Add `InstallDropbox.sh` 'Install Dropbox Mac' shell script
- [x] Add `Installdbxcli.sh` 'Install dbxcli Mac' shell script
<!--- [ ] Add `InstallEvernote.sh` 'Install Evernote Mac' shell script-->
- [x] Add `InstallSpotify.sh` 'Install Spotify Mac' shell script
- [ ] Add `InstallWhatsApp.sh` 'Install WhatsApp Mac' shell script
<!--- [ ] Add `InstallMessengerforMac.sh` 'Install Messenger for  Mac' shell script-->
- [ ] Add `InstallGoofy.sh` 'Install Goofy Mac' shell script
- [ ] Add `SetKeyboardBrightnessTo100percent.sh` 'Set keyboard brightness to max' Mac shell script
- [ ] Add `SetVolumeTo50percent.sh` 'Set OS volume to 50%' Mac shell script
- [ ] Add `SetVolumeToMuted.sh` 'Set OS volume to muted' Mac shell script
- [ ] Add `GetVolumeMuteStatus.sh` 'Get OS volume mute status' Mac shell script
- [ ] Add `ClearChromeSuggestions.sh` 'Delete Chrome Mac suggestions' shell script

- - -

#### Thanks to

* [Mathias Bynens](https://mathiasbynens.be/) for [~~`dotfiles/.osx`~~](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.osx) [`dotfiles/.macos`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.macos) [~~*NM.ND.2014*~~](https://github.com/mathiasbynens/dotfiles/commit/3b4eb3efb692aa4d19a1e2c30c2ed9a65e9c7d8c) [*7.21.2016*](https://github.com/mathiasbynens/dotfiles/commit/47268d92afbec69e3a7243a144a126bbd25bcf2c) and [`dotfiles/.gitconfig`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.gitconfig) *[8.22.2016](https://github.com/mathiasbynens/dotfiles/commit/47268d92afbec69e3a7243a144a126bbd25bcf2c)*
* [Michael Kaiser-Nyman](http://www.epicodus.com/) *NM.ND.2015*
* [Matt Butcher](http://technosophos.com/) *NM.ND.2015*
* [Mark Nichols](http://zanshin.net/) for [`dotfiles/README.markdown`](https://raw.githubusercontent.com/zanshin/dotfiles/master/README.markdown) [*NM.ND.2016*](https://github.com/zanshin/dotfiles/commit/02ec428566e893b765e1c34c31f330bb6531dd51)
* [Brandon Brown](https://brandonb.io/) for [`osx-for-hackers.sh`](https://gist.githubusercontent.com/brandonb927/3195465/raw/f9aa762705e6cf86cc8f3ce74b43a89eecab6f36/osx-for-hackers.sh) [*6.5.2016*](https://gist.github.com/brandonb927/3195465/06fe593551bc778a232584593aa462a1ce635a70)
* [Hannes Juutilainen](https://obsoletesysadmin.wordpress.com/) for [`dotfiles/bin/osx-system-defaults.sh`](https://raw.githubusercontent.com/hjuutilainen/dotfiles/master/bin/osx-system-defaults.sh) and [`dotfiles/bin/osx-user-defaults.sh`](https://raw.githubusercontent.com/hjuutilainen/dotfiles/master/bin/osx-user-defaults.sh) [*7.24.2016*](https://github.com/hjuutilainen/dotfiles/commit/93f33a7a5954fe63c075f43dbda688d941643d9e)
* [Andrew Wong](https://andrewwong.id.au/) for [`vim-hybrid/colors/hybrid.vim`](https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim) [*8.22.2016*](https://github.com/w0ng/vim-hybrid/commit/cc58baabeabc7b83768e25b852bf89c34756bf90) and [`dotfiles/osx/defaults.bash`](https://raw.githubusercontent.com/w0ng/dotfiles/master/osx/defaults.bash) *[27.8.2016](https://github.com/w0ng/dotfiles/commit/98bb99e85ff175d213f2199a788411b20f483b01)*
* [Michael Kühnel](http://michael-kuehnel.de/) for ['Quick tip: Git, Mac OS X and german umlauts (umlaute)'](http://michael-kuehnel.de/git/2014/11/21/git-mac-osx-and-german-umlaute.html) *[8.22.2016](https://github.com/mischah/dotfiles/commit/f2ab1a8bb27a6dc944e2abd991f499e7928aef0d)*
* [Chris Gerke](https://www.linkedin.com/in/chrisgerke) for [`applekeyboard`](https://gist.githubusercontent.com/cgerke/e5500f93cd5edf05084c/raw/18c4513d662ffc636eba56f854b5e3b817c4bf51/applekeyboard) *[2017.2.16 @ 10:52](https://gist.github.com/cgerke/e5500f93cd5edf05084c/18c4513d662ffc636eba56f854b5e3b817c4bf51)*
* [Chris White](https://github.com/christopherdwhite) for [his 2017.6.26 comment on commit 398496c](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#comments) *[2017.12.2, 15:45:0](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#commitcomment-22753491)*
* [Simon Fredsted](https://simonfredsted.com/) for ['How to use Apple's SF Mono font in your editor'](https://simonfredsted.com/1438) *[2018.1.2, 13:35:58](https://web.archive.org/save/https://simonfredsted.com/1438)*

#### Author

<p align='center'><a href='http://kvpb.co/'><img src='https://rawgit.com/kvpb/b9c0737f2941542ae22b2806b66a3c19/raw/9867dde923550a08d05f3fae3a2b02905ea8345c/quickresponsecode.svg'></a><br>
<b>Karl 'Kabe' Bertin (Карл Бэртин) `kvpb`</b><br> <!-- Neither `<span style='font-variant: small-caps;'>Bertin</span>` & `<span style='font-variant: small-caps;'>Бэртин</span>` nor `B<small>ERTIN</small>` & `Б<small>ЭРТИН</small>` work on GitHub. -->
<a href='https://www.linkedin.com/in/karlbertin'>LinkedIn</a> | <a href='https://www.facebook.com/karlbertin'>Facebook</a> | <a href='https://www.instagram.com/karlbertin/'>Instagram</a>

**PS:** Whether you thank me or not, please credit the people I took code from.
