<h3 align='center'><b>Karl's</b></h3>
<h1 align='center'><b>DOTFILES</b></h1>
<h3 align='center'><b>Runcoms, Configuration Files, Setups, Scripts, Templates & Hacks</b></h3>

---

<p align='center'><a href=''><img src='https://gistcdn.githack.com/kvpb/807924c1f72cc407d798f22431559f3d/raw/e7828591fe13bb451b05ea0512d67f19e6c8fdb6/macospackagemanager.svg'></a></p>

## **Apple Computer Operating System Setups**<br>`.acos` (`.macosx`, `.osx`, `.macos` & `.ios`) ![platform](https://gistcdn.githack.com/kvpb/ed57eb3a03f2b5338fbede97e7cf296b/raw/ea6556bb04f592433023533ddbd931cc7d23e92b/apple-F6F6F6D5E1ED1E72F21AD5FD-madeona-1AD5FD1E72F2-mac-F6F6F6D5E1ED.svg)

#### Where-is
<details><summary><code>.files/</code></summary>

- [x] `.acos`
- [ ] `.macosx104`
- [ ] `.macosx106`
- [x] `.osx109`
- [x] `.macos11`
- [ ] `.ios`
</details>

#### What-is

Apple computers operating systems configuration scripts family.

#### How-to

**NB:** Unless you know what you are doing, _do not execute these scripts as root!_ If you want to do it anyway, replace `/Users/${USER}` with `${HOME}`. Though if you did not know that already, you most likely should not do it.

Launch a terminal emulator, e.g. [Terminal](https://web.archive.org/web/20190326164259/https://support.apple.com/guide/terminal/welcome/mac) or [MTerminal](https://web.archive.org/web/20141020160524/http://cydia.saurik.com/package/com.officialscheduler.mterminal/), and enter this:

```sh
cd /Users/${USER} && /bin/bash <(curl -fsSL https://raw.githubusercontent.com/kvpb/.files/master/.acos)
```

---

## **Linux-Based Operating System Setups**<br>`.lbos` (`.archlinux`, `.ubuntu` & `.android`) ![platform](https://gistcdn.githack.com/kvpb/ed57eb3a03f2b5338fbede97e7cf296b/raw/ea6556bb04f592433023533ddbd931cc7d23e92b/ubuntu-F6F6F6D5E1ED1E72F21AD5FD-madeona-1AD5FD1E72F2-linuxbox-F6F6F6D5E1ED.svg) ![platform](https://gistcdn.githack.com/kvpb/ed57eb3a03f2b5338fbede97e7cf296b/raw/ea6556bb04f592433023533ddbd931cc7d23e92b/android-F6F6F6D5E1ED1E72F21AD5FD-madeonan-1AD5FD1E72F2-androidphone-F6F6F6D5E1ED.svg)

#### Where-is
<details><summary><code>.files/</code></summary>

- [ ] `.lbos`
- [ ] `.archlinux`
- [x] `.ubuntu`
- [ ] `.android`
</details>

#### What-is

Linux-based operating systems configuration scripts family.

<!--#### How-to

**NB:** Unless you know what you are doing, _do not execute these scripts as root!_ If you want to do it anyway, replace `/home/${USER}` with `${HOME}`.

Launch a terminal emulator, e.g. [GNOME Terminal](https://terminator-gtk3.readthedocs.io/en/latest/), [Terminator](https://terminator-gtk3.readthedocs.io/en/latest/) or [Terminal Emulator for Android](https://play.google.com/store/apps/details?id=jackpal.androidterm), and enter this:

```sh
cd /home/${USER} && wget -qO- https://raw.githubusercontent.com/kvpb/.files/master/.lbos | bash -s -- -v -v
```
-->
---

## **VIM Initializations**<br>`.vimrc` & `.vim/`

#### Where-is
<details><summary><code>.files/</code></summary>

- [x] `.vim/`
- [x] `.vimrc`
<!--- [x] `.bashrc` required as 'dependency'
- [x] `.aliases` required as 'dependency'
--></details>

#### What-is

My VIM setup featuring a true TextEdit-like key mapping.

---

<p align='center'><a href='https://github.com/kvpb/.files/blob/master/bin/rpwg.py'><img src='https://gistcdn.githack.com/kvpb/c9d1aa35c62862e73c50836dc49dbc66/raw/5c32c06d72b0169b6ed688efdd99d1d3d6d2eb31/rpwg.svg'></a></p>

## **Random Password Generator**<br>`rpwg.py`

#### Where-is
<details><summary><code>.files/</code><code>bin/</code></summary>

- [x] `rpwg.py`
</details>

#### What-is

A pseudorandom password generator.

#### How-to

**UNIX & Linux:**  
&nbsp;&nbsp;0.&nbsp;&nbsp;[Install Python 3.](https://wiki.python.org/moin/BeginnersGuide/Download)  
&nbsp;&nbsp;1.&nbsp;&nbsp;[Get RPwG.](https://github.com/kvpb/rpwg/releases/tag/1.10)  
&nbsp;&nbsp;2.&nbsp;&nbsp;Open a terminal emulator, e.g. [Terminal](https://web.archive.org/web/20190326164259/https://support.apple.com/guide/terminal/welcome/mac) or [GNOME Terminal](https://web.archive.org/web/20130207013917/http://help.gnome.org/users/gnome-terminal/stable/).  
&nbsp;&nbsp;3.&nbsp;&nbsp;Type '`python `', drag and drop the `rpwg.py` file on the window, type '` --help`', and press the enter key.  
&nbsp;&nbsp;4.&nbsp;&nbsp;Follow the instructions, and copy and paste your password.

~~**MS-DOS:**~~  
&nbsp;&nbsp;Do yourself a favor: either build a Linux PC, or get a Mac.

---
<!--
## **Karl's Notetaking System**
-->
<!--<p align='center'><a=href='https://github.com/kvpb/.files/raw/master/notetakingsystem.docx'><img src='https://gist.githack.com/kvpb/d09c287b1d3c8e77bb9897db657938d4/raw/54cdac0b8ffad36d9ade790cfa53d138c6867412/karlbertinsscratchingsystemfrontcover.svg'></a>-->
<!--
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

---
-->
#### Thanks to

* [Kamil Stachowski](https://www.vim.org/account/profile.php?user_id=15489) for [`corporation.vim`](https://www.vim.org/scripts/download_script.php?src_id=9465) [2016.NM.ND](https://web.archive.org/web/20200208141740/https://www.vim.org/scripts/download_script.php?src_id=9465)
* [Michael Kühnel](http://michael-kuehnel.de/) for [_Quick tip: Git, Mac OS X and german umlauts (umlaute)_](https://web.archive.org/web/20141206131949/https://michael-kuehnel.de/git/2014/11/21/git-mac-osx-and-german-umlaute.html) [8.22.2016](https://github.com/mischah/dotfiles/commit/f2ab1a8bb27a6dc944e2abd991f499e7928aef0d)
* [Chris Gerke](https://www.linkedin.com/in/chrisgerke) for [`applekeyboard`](https://gist.githubusercontent.com/cgerke/e5500f93cd5edf05084c/raw/18c4513d662ffc636eba56f854b5e3b817c4bf51/applekeyboard) [2017.2.16 @ 10:52](https://gist.github.com/cgerke/e5500f93cd5edf05084c/18c4513d662ffc636eba56f854b5e3b817c4bf51)
* [Chris White](https://github.com/christopherdwhite) for [his 2017.6.26 comment on commit 398496c](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#comments) [2017.12.2, 15:45:0](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#commitcomment-22753491)
* [Simon Fredsted](https://simonfredsted.com/) for [_How to use Apple's SF Mono font in your editor_](https://web.archive.org/web/20190317135558/https://simonfredsted.com/1438) [2018.1.2, 13:35:58](https://web.archive.org/save/https://simonfredsted.com/1438)
* [Mark Vincze](https://blog.markvincze.com) for [_Download artifacts from a latest GitHub release with bash and PowerShell_](https://web.archive.org/web/20180131223312/https://blog.markvincze.com/download-artifacts-from-a-latest-github-release-in-sh-and-powershell/) 2018.01.31
* [Paul Dickson \``MrP`\`](https://web.archive.org/web/20180921074452/https://www.jamf.com/jamf-nation/users/9931/mrp) for [his script to deny websites to access the camera, microphone, location and notifications](https://www.jamf.com/jamf-nation/discussions/26028/programatic-configuration-of-safari-11-websites-preferences-tab#responseChild157039) [2019.05.04, 15:30:00](https://web.archive.org/web/20190504131334/https://www.jamf.com/jamf-nation/discussions/26028/programatic-configuration-of-safari-11-websites-preferences-tab#responseChild157039)
* [Lauri 'Lri' Ranta](http://lri.me/) for [their answer about Mac custom key bindings](https://web.archive.org/web/20130203125715/https://superuser.com/questions/463456/how-to-configure-keyboard-shortcuts-for-special-characters-on-os-x#463517) [2019.06.14, 14:30:00](https://web.archive.org/web/20190614130455/https://superuser.com/questions/463456/how-to-configure-keyboard-shortcuts-for-special-characters-on-os-x#463517)
* [Jacob Rus](https://www.hcs.harvard.edu/~jrus/) for [_Customizing The Cocoa Text System_](https://web.archive.org/web/20060412153805/http://www.hcs.harvard.edu/~jrus/Site/Cocoa%20Text%20System.html) [2019.06.14, 14:31:00](https://web.archive.org/web/20190614131351/http://www.hcs.harvard.edu/~jrus/Site/Cocoa%20Text%20System.html)
* [André Pang](http://algorithm.com.au) for [`DefaultKetBinding.dict`](https://web.archive.org/web/20041104054838/http://www.algorithm.com.au/files/mac_os_x/DefaultKeyBinding.dict) [2019.06.14, 14:33:00](https://web.archive.org/web/20190614132419/http://algorithm.com.au/blog/files/54a269e385916faedf9560b7fd97a50c-279.html)
* [Ryan P. C. McQuen](https://ryanpcmcquen.org/) for [`true-monochrome_vim/colors/true-monochrome.vim`](https://raw.githubusercontent.com/ryanpcmcquen/true-monochrome_vim/master/colors/true-monochrome.vim) [2020.01.24](https://github.com/ryanpcmcquen/true-monochrome_vim/commit/e1bcbcf9deca4527ed19bb5cb1ed10fe1cd6b9e8#diff-9fb420887ac445c338b9ea01e7d7ed4b)
* [Julien Castelain](http://julien.js.org/) for [`vim-colors-green/colors/green.vim`](https://raw.githubusercontent.com/julien/vim-colors-green/master/colors/green.vim) [2020.01.24](https://github.com/julien/vim-colors-green/commit/c2ab216a1f8e9d15ddf25135200048326a76394b#diff-d8165931f5472490634f50524de08eca)
* [Charlie Gunyon](http://charlieg.net/) for [`amber/colors/amber.vim`](https://raw.githubusercontent.com/camgunz/amber/master/colors/amber.vim) [2020.01.24](https://github.com/camgunz/amber/commit/23d8e7a53e39e31c01c4fc1e353d95781fa08e49#diff-b3098a38cdf626efc0cc5ddbb858c1c4)
* [Cormac Relf](https://github.com/cormacrelf) for [`vim-colors-github/colors/github.vim`](https://raw.githubusercontent.com/cormacrelf/vim-colors-github/master/colors/github.vim) [2020.01.24](https://github.com/cormacrelf/vim-colors-github/commit/acb712c76bb73c20eb3d7e625a48b5ff59f150d0#diff-451fb194f8486978732fecc575e54723)
* [Columbia University in the City of New York](https://www.columbia.edu/) for [_Headlines_](https://web.archive.org/web/20041108032317/http://www.columbia.edu/itc/journalism/isaacs/client_edit/Headlines.html) [2020.02.20](http://www.columbia.edu/itc/journalism/isaacs/client_edit/Headlines.html)
* [University of Kansas](https://www.ku.edu/) for [_Making an impact--- accurately_](https://web.archive.org/web/20060904173706/https://web.ku.edu/~edit/heads.html) [2020.02.20](https://web.ku.edu/~edit/heads.html)
* [Wojciech Kępka](https://wkepka.dev/) for [`ghdark.vim`](https://raw.githubusercontent.com/wojciechkepka/vim-github-dark/master/colors/ghdark.vim) [2021.06.28](https://github.com/wojciechkepka/vim-github-dark/commit/c3eca592f8f6ed9fb7c0cebe1ad8be6c63775571#diff-2abd43c7b1fb004df78d81ffe810b181fba9c88cfcd8ce15403ccb8e4e396e2e)

#### Author

<p align='center'><a href='http://kvpb.co'><img src='https://gistcdn.githack.com/kvpb/c80594e9079e857c55c36dec49a1a2d7/raw/eec54d5821dc092ad910635141c4e4feebf07565/kvpbssymbol.svg'></a><br>
<b>Karl V. P. B. `<code>kvpb</code>`</b><br>
<a href='https://www.linkedin.com/in/karlbertin'>LinkedIn</a>&nbsp;&nbsp;<a href='https://twitter.com/kvpbx'>Twitter</a>&nbsp;&nbsp;<a href='https://vm.tiktok.com/ZSwAmcFh/'>TikTok</a><br>
<br>
<br>
<br>
<img src='https://gistcdn.githack.com/kvpb/f5f75716dd024cc48f8dc28176c0b642/raw/e5344bebf926b378faeb208724ae97f4e06639ca/kvpbsesrbrating.svg'></p>