# `.files`
#### Runcoms, configuration files and setups.

# &nbsp;&nbsp;`.macosx`, `.osx` & `.macos`

#### What-is

&nbsp;&nbsp;Apple computers operating systems configuration scripts family.

#### How-to

&nbsp;&nbsp;Launch a terminal emulator (eg Terminal or iTerm2) then enter this:

&nbsp;&nbsp;**OS X 10.9.5 Mavericks:**

```sh
cd && git clone https://github.com/kvpb/.files.git && cd .files && ./.osx1095
```

&nbsp;&nbsp;**OS X 10.10.5 Yosemite:**

```sh
cd && git clone https://github.com/kvpb/.files.git && cd .files && ./.osx10105
```

**Note:** Don't hesitate to help me finding new hidden preferences with `defaults read`! (You'll get full credits for that, of course.)

- - -

# &nbsp;&nbsp;[`.files/lib/plist/`] `Text Substitutions.plist`

#### What-is

&nbsp;&nbsp;macOS text substitutions (list of abbreviations to automatically replace by words).

#### How-to

&nbsp;&nbsp;1.&nbsp;&nbsp;[Download `Text Substitutions.plist`.](https://rawgit.com/kvpb/.files/master/lib/plist/Text%20Substitutions.plist)

&nbsp;&nbsp;2.&nbsp;&nbsp;Launch Finder then go to current user's `Downloads` folder.

&nbsp;&nbsp;3.&nbsp;&nbsp;Launch System preferences then go to Keyboard and then Text.

&nbsp;&nbsp;4.&nbsp;&nbsp;Drag `Text Substitutions.plist` from Finder window and drop it to System preferences window's table-like list.

&nbsp;&nbsp;**NB:** This works with macOS software that use it. I know it works with TextEdit, but I don't know if it works with Word for Mac 2011.

- - -

# &nbsp;&nbsp;`flashcardsstructures.docx`, `uenctcnyyyymmdd.docx`, `uenyyyymmdd.docx`, `Forename_Surname_UEN_GN_Fiche_de_lecture.docx`, `Forename_Surname_UEN_GN_Memoire.docx`, `notetakingstructures.docx` & `notetakingsystem.docx`

<p align='center'><a=href='https://github.com/kvpb/.files/raw/master/notetakingsystem.docx'><img src='https://rawgit.com/kvpb/d09c287b1d3c8e77bb9897db657938d4/raw/70fb4831a8aa9884b1f68e7da5794dd763f353cc/karlbertinsscratchingsystemfrontcover.svg'></a>

#### What-is

&nbsp;&nbsp;I's scratching system I built at university for better faster cleaner notetaking. And in case you wonder, yes, even this read-me has been written following these guidelines.

#### How-to

&nbsp;&nbsp;Launch a word processor (eg Word for Mac 2011 or TextEdit) then… No, really. I mean, seriously. Please, don't even tell me you need a walkthrough to use these.

&nbsp;&nbsp;**Note:** Be confident with these, they're self-explicit as possible. It's built to be easy and fast to learn, use and understand. If you've got any suggestion to improve it, feel free to jump in, express yourself, let loose — open an issue or contact me via Facebook. You're always welcome.

- - -

#### To-do

#### &nbsp;&nbsp;`.macosx`, `.osx` & `.macos`

- [x] ~~Reorganize the scripts into 3 parts:~~
  - [x] First-party: System-wide & user-specific preferences
  - [x] Second-party: User-specific filesystem customs
  - [x] Third-party: System-wide & user-specific xenogenetic software & preferences
- [x] Reorganize the scripts by layers (my 3 parts, from firmware, kernel and drivers to applications, from important to trivial and from open standard to closed proprietary)

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

#### Author

<p align='center'><a href='http://kvpb.co'><img src='https://rawgit.com/kvpb/b9c0737f2941542ae22b2806b66a3c19/raw/2352bb5c55f1f6246872a796b32980ea5e816412/quickresponsecode.svg'></a><br>
<b>Karl Bertin (kvpb)</b><br>
<s><a href='https://www.linkedin.com/in/karlbertin'>LinkedIn</a></s> | <a href='https://www.facebook.com/karlbertin'>Facebook</a>

&nbsp;&nbsp;**Note:** Thank me or not but please give credit to the people I took code from. There's no ‘I've got things to do now, I'll do it later’ excuse.
