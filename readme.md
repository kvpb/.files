<p align='center'><a href=''><img src='https://gistcdn.githack.com/kvpb/bfc847c17e106fb8f99c9bdf05d408c7/raw/73ea74e68c8543efb617120f2af2d6cbd2c42f22/aceofclubs.svg' alt="Karl Vincent Pierre Bertin AKA Karl Thomas George West's"></a></p>
<p align='center'><a href=''><img src='https://gistcdn.githack.com/kvpb/2c0ef105a9e3d62e5cd6d5bcdc477283/raw/89a9d61f6c77debaad84d0d621f3c4c8e0ed0c8b/dotfiles.svg' alt="a logotype for Karl Vincent Pierre Bertin AKA Karl Thomas George West's dot files"></a></p>
<h3 align='center'><b>runcoms, configuration files, setups, scripts, templates & hacks</b></h3>

---

<p align='center'><a href=''><img src='https://gistcdn.githack.com/kvpb/807924c1f72cc407d798f22431559f3d/raw/e7828591fe13bb451b05ea0512d67f19e6c8fdb6/macospackagemanager.svg'  alt="a logotype for Karl Vincent Pierre Bertin AKA Karl Thomas George West's Apple operating system setups"></a></p>

## **Apple operating system setups**<br>`.macos` ![platform](https://gistcdn.githack.com/kvpb/ed57eb3a03f2b5338fbede97e7cf296b/raw/ea6556bb04f592433023533ddbd931cc7d23e92b/apple-F6F6F6D5E1ED1E72F21AD5FD-madeona-1AD5FD1E72F2-mac-F6F6F6D5E1ED.svg)
#### Apple operating systems configuration scripts family.

<details><summary><code>.files/</code></summary>

- [x] `.macos` ~~`.osx`~~ ~~`.macosx`~~
- [ ] ~~`.ios`~~
</details>

**N.B..**&nbsp;&nbsp;&nbsp;&nbsp;Unless you're experienced enough, _don't execute these scripts as root!_ If you wanna do it anyway, replace `/Users/${USER}` with `${HOME}`, though if you didn't know that already, you shouldn't do it.

Launch a terminal emulator, e.g. [Terminal](https://web.archive.org/web/20190326164259/https://support.apple.com/guide/terminal/welcome/mac)<!-- or [MTerminal](https://web.archive.org/web/20141020160524/http://cydia.saurik.com/package/com.officialscheduler.mterminal/)-->, and enter this:

```sh
cd /Users/${USER} && /bin/bash <(curl -fsSL https://raw.githubusercontent.com/kvpb/.files/master/.macos)
```

---

## **Linux distribution setups**<br>`.linuxdistro` ![platform](https://gistcdn.githack.com/kvpb/ed57eb3a03f2b5338fbede97e7cf296b/raw/ea6556bb04f592433023533ddbd931cc7d23e92b/ubuntu-F6F6F6D5E1ED1E72F21AD5FD-madeona-1AD5FD1E72F2-linuxbox-F6F6F6D5E1ED.svg) <!--![platform](https://gistcdn.githack.com/kvpb/ed57eb3a03f2b5338fbede97e7cf296b/raw/ea6556bb04f592433023533ddbd931cc7d23e92b/android-F6F6F6D5E1ED1E72F21AD5FD-madeonan-1AD5FD1E72F2-androidphone-F6F6F6D5E1ED.svg)-->
#### Linux-based operating systems configuration scripts family.

<details><summary><code>.files/</code></summary>

- [x] `.linuxdistro` ~~`.fedoralinux`~~ ~~`.archlinux`~~
- [ ] ~~`.android`~~
</details>

<!--**N.B..**&nbsp;&nbsp;&nbsp;&nbsp;Unless you're experienced enough, _don't execute these scripts as root!_ If you wanna do it anyway, replace `/home/${USER}` with `${HOME}`, though if you didn't know that already, you shouldn't do it.

Launch a terminal emulator, e.g. [GNOME Terminal](https://terminator-gtk3.readthedocs.io/en/latest/), [Terminator](https://terminator-gtk3.readthedocs.io/en/latest/) or [Terminal Emulator for Android](https://play.google.com/store/apps/details?id=jackpal.androidterm), and enter this:

```sh
cd /home/${USER} && wget -qO- https://raw.githubusercontent.com/kvpb/.files/master/.lbos | bash -s -- -v -v
```
-->
---

<p align='center'><a href=''><img src='https://gistcdn.githack.com/kvpb/ae48d0334c9cde468626d71c78ba5b74/raw/f09c8b32c37fbdb59dbfa6ad783c69e4545a297b/viminitializations.svg' alt="a logotype for Karl Vincent Pierre Bertin AKA Karl Thomas George West's VIM initializations"></a></p>

`.vimrc` & `.vim/`
#### My VIM setup. And it maps keys true to TextEdit, though this requires BASH to be set accordingly.

<details><summary><code>.files/</code></summary>

- [x] `.vim/`
- [x] `.vimrc`
- [x] `.bashrc`</details>

---

<p align='center'><a href='https://github.com/kvpb/.files/blob/master/bin/getset.scpt'><img src='https://gistcdn.githack.com/kvpb/df4f18b9ed57ae5eeb1e10df4d5c0710/raw/e6c7767bd8826a4f863c9cb334183f98f7f271f6/getset.svg'></a></p>

`getset.scpt` ![platform](https://gistcdn.githack.com/kvpb/ed57eb3a03f2b5338fbede97e7cf296b/raw/ea6556bb04f592433023533ddbd931cc7d23e92b/apple-F6F6F6D5E1ED1E72F21AD5FD-madeona-1AD5FD1E72F2-mac-F6F6F6D5E1ED.svg)
#### A command-line utility for the control of the hardware of my Mac.

<details><summary><code>.files/</code><code>bin/</code></summary>

- [x] `getset.scpt`</details>

<pre><code><sup><b>kvpb@KVPB's MacBook Pro:</b><!--<u>--><ins>~</ins><!--</u>-->
<b>2026.07.02@12:00:00 $</b></sup> getset
volume: 6 %;
screen brightness: 37 %;
keyboard brightness: 10 %;
resolution: 3456 * 2234 px Retina;

Get Set
Control the hardware of your Mac.

use:
  getset (s(ound))v(olume) ( n )
  getset (s(creen))b(rightness) ( n )
  getset k(eyboard)b(rightness) ( n )
  getset (s(creen))r(esolution) ( n )</code></pre>

<pre><code><sup><b>kvpb@KVPB's MacBook Pro:</b><ins>~</ins>
<b>2026.07.02@19:00:00 $</b></sup> alias getset='${HOME}/.files/bin/GetSet.scpt'
<sup><b>kvpb@KVPB's MacBook Pro:</b><ins>~</ins>
<b>2026.07.02@19:00:07 $</b></sup> getset brightness 11
11
<sup><b>kvpb@KVPB's MacBook Pro:</b><ins>~</ins>
<b>2026.07.02@19:00:10 $</b></sup> getset brightness
68
<sup><b>kvpb@KVPB's MacBook Pro:</b><ins>~</ins>
<b>2026.07.02@19:00:13 $</b></sup> alias gs='getset'
<sup><b>kvpb@KVPB's MacBook Pro:</b><ins>~</ins>
<b>2026.07.02@19:00:15 $</b></sup> gs v 3
3
<sup><b>kvpb@KVPB's MacBook Pro:</b><ins>~</ins>
<b>2026.07.02@19:00:16 $</b></sup> gs v
18
<sup><b>kvpb@KVPB's MacBook Pro:</b><ins>~</ins>
<b>2026.07.02@19:00:17 $</b></sup> # Can't explain---get in the car.</code></pre>

---

<p align='center'><a href='https://github.com/kvpb/rpwg'><img src='https://gistcdn.githack.com/kvpb/c9d1aa35c62862e73c50836dc49dbc66/raw/961005abe25e99cd822bba54480ae62c9d275926/rpwg.svg' alt="an illustration for Karl Vincent Pierre Bertin AKA Karl Thomas George West's cross-layout random password generator"></a></p>

## **random password generator**<br>
#### A cross-layout random password generator.

[<details><summary><code>https://github.com/</code><code>kvpb/</code><code>rpwg/</code></summary>](https://github.com/kvpb/rpwg)

- [x] `LICENSE`
- [x] `README.MD`
- [x] `rpwg.py`
- [x] `Makefile`
</details>

**UNIX & Linux:**  
&nbsp;&nbsp;0.&nbsp;&nbsp;[Install Python 3.](https://wiki.python.org/moin/BeginnersGuide/Download)  
&nbsp;&nbsp;1.&nbsp;&nbsp;[Get RPwG.](https://github.com/kvpb/rpwg/archive/refs/heads/master.zip)  
&nbsp;&nbsp;2.&nbsp;&nbsp;Open a terminal emulator, e.g. [Terminal](https://web.archive.org/web/20190326164259/https://support.apple.com/guide/terminal/welcome/mac) or [GNOME Terminal](https://web.archive.org/web/20130207013917/http://help.gnome.org/users/gnome-terminal/stable/).  
&nbsp;&nbsp;3.&nbsp;&nbsp;Drag and drop the `rpwg` folder on the window of the terminal emulator, enter '`sudo make install`', and enter your password.  
&nbsp;&nbsp;4.&nbsp;&nbsp;Close the window of the terminal emulator, and open another one.  
&nbsp;&nbsp;5.&nbsp;&nbsp;Enter '`rpwg --help`'.  
&nbsp;&nbsp;6.&nbsp;&nbsp;Follow the instructions, and copy and paste your password.

**MS-DOS (Windows):**  
&nbsp;&nbsp;0.&nbsp;&nbsp;[Install Python 3.](https://wiki.python.org/moin/BeginnersGuide/Download)  
&nbsp;&nbsp;1.&nbsp;&nbsp;[Get RPwG.](https://github.com/kvpb/rpwg/archive/refs/heads/master.zip)  
&nbsp;&nbsp;2.&nbsp;&nbsp;Open the right terminal emulator, namely [PowerShell](https://web.archive.org/web/*/https://learn.microsoft.com/en-us/powershell/) or [Windows Terminal](https://web.archive.org/web/*/https://learn.microsoft.com/en-us/windows/terminal/).  
&nbsp;&nbsp;3.&nbsp;&nbsp;Type '`cd `', drag and drop the `rpwg` folder on the window, press the enter key, and enter '`py .\rpwg.py --interactive` or `.\rpwg.py -i`.  
&nbsp;&nbsp;4.&nbsp;&nbsp;Follow the instructions, and copy and paste your password.

---

#### references

* [_Quick tip: Git, Mac OS X and german umlauts (umlaute)_](https://web.archive.org/web/20141206131949/https://michael-kuehnel.de/git/2014/11/21/git-mac-osx-and-german-umlaute.html)<br>[Michael Kühnel](http://michael-kuehnel.de/)<br>[8.22.2016](https://github.com/mischah/dotfiles/commit/f2ab1a8bb27a6dc944e2abd991f499e7928aef0d)
* [`applekeyboard`](https://gist.githubusercontent.com/cgerke/e5500f93cd5edf05084c/raw/18c4513d662ffc636eba56f854b5e3b817c4bf51/applekeyboard)<br>[Chris Gerke](https://www.linkedin.com/in/chrisgerke)<br>[2017.2.16 @ 10:52](https://gist.github.com/cgerke/e5500f93cd5edf05084c/18c4513d662ffc636eba56f854b5e3b817c4bf51)
* [2017.6.26 comment on commit 398496c](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#comments)<br>[Chris White](https://github.com/christopherdwhite)<br>[2017.12.2, 15:45:0](https://github.com/mathiasbynens/dotfiles/commit/398496c2372d65c0e6770d02b0c5b49c0d636f31#commitcomment-22753491)
* [_How to use Apple's SF Mono font in your editor_](https://web.archive.org/web/20190317135558/https://simonfredsted.com/1438)<br>[Simon Fredsted](https://simonfredsted.com/)<br>[2018.1.2, 13:35:58](https://web.archive.org/save/https://simonfredsted.com/1438)
* [_Download artifacts from a latest GitHub release with BASH and PowerShell_](https://web.archive.org/web/20180131223312/https://blog.markvincze.com/download-artifacts-from-a-latest-github-release-in-sh-and-powershell/)<br>[Mark Vincze](https://blog.markvincze.com)<br>2018.01.31
* [script](https://www.jamf.com/jamf-nation/discussions/26028/programatic-configuration-of-safari-11-websites-preferences-tab#responseChild157039)<br>[Paul Dickson \``MrP`\`](https://web.archive.org/web/20180921074452/https://www.jamf.com/jamf-nation/users/9931/mrp)<br>[2019.05.04, 15:30:00](https://web.archive.org/web/20190504131334/https://www.jamf.com/jamf-nation/discussions/26028/programatic-configuration-of-safari-11-websites-preferences-tab#responseChild157039)
* [answer about Mac custom key bindings](https://web.archive.org/web/20130203125715/https://superuser.com/questions/463456/how-to-configure-keyboard-shortcuts-for-special-characters-on-os-x#463517)<br>[Lauri 'Lri' Ranta](http://lri.me/)<br>[2019.06.14, 14:30:00](https://web.archive.org/web/20190614130455/https://superuser.com/questions/463456/how-to-configure-keyboard-shortcuts-for-special-characters-on-os-x#463517)
* [_Customizing the Cocoa text system_](https://web.archive.org/web/20060412153805/http://www.hcs.harvard.edu/~jrus/Site/Cocoa%20Text%20System.html)<br>[Jacob Rus](https://www.hcs.harvard.edu/~jrus/)<br>[2019.06.14, 14:31:00](https://web.archive.org/web/20190614131351/http://www.hcs.harvard.edu/~jrus/Site/Cocoa%20Text%20System.html)
* [`DefaultKetBinding.dict`](https://web.archive.org/web/20041104054838/http://www.algorithm.com.au/files/mac_os_x/DefaultKeyBinding.dict)<br>[André Pang](http://algorithm.com.au)<br>[2019.06.14, 14:33:00](https://web.archive.org/web/20190614132419/http://algorithm.com.au/blog/files/54a269e385916faedf9560b7fd97a50c-279.html)
* [`vim-colors-github/colors/github.vim`](https://raw.githubusercontent.com/cormacrelf/vim-colors-github/master/colors/github.vim)<br>[Cormac Relf](https://github.com/cormacrelf)<br>[2020.01.24](https://github.com/cormacrelf/vim-colors-github/commit/acb712c76bb73c20eb3d7e625a48b5ff59f150d0#diff-451fb194f8486978732fecc575e54723)
* [_Headlines_](https://web.archive.org/web/20041108032317/http://www.columbia.edu/itc/journalism/isaacs/client_edit/Headlines.html)<br>[Columbia University in the City of New York](https://www.columbia.edu/)<br>[2020.02.20](http://www.columbia.edu/itc/journalism/isaacs/client_edit/Headlines.html)
* [_Making an impact---accurately_](https://web.archive.org/web/20060904173706/https://web.ku.edu/~edit/heads.html)<br>[University of Kansas](https://www.ku.edu/)<br>[2020.02.20](https://web.ku.edu/~edit/heads.html)
* [`ghdark.vim`](https://raw.githubusercontent.com/wojciechkepka/vim-github-dark/master/colors/ghdark.vim)<br>[Wojciech Kępka](https://wkepka.dev/)<br>[2021.06.28](https://github.com/wojciechkepka/vim-github-dark/commit/c3eca592f8f6ed9fb7c0cebe1ad8be6c63775571#diff-2abd43c7b1fb004df78d81ffe810b181fba9c88cfcd8ce15403ccb8e4e396e2e)
* [Helvetica](https://www.myfonts.com/collections/helvetica-font-linotype/)<br>[Max Miedinger](https://www.myfonts.com/collections/max-miedinger/)<br>1957
* [Neue Helvetica](https://www.myfonts.com/collections/neue-helvetica-font-linotype/)<br>[Max Miedinger](https://www.myfonts.com/collections/max-miedinger/) & [Linotype Design Studio](https://www.linotype.com/index.html)<br>1983
* [Helvetica Monospaced](https://www.myfonts.com/collections/helvetica-monospaced-font-linotype/)<br>[Linotype Design Studio](https://www.linotype.com/index.html)<br>2000
* [Helvetica Now](https://www.monotype.com/fonts/helvetica-now)<br>[Monotype Studio](https://www.monotype.com/)'s Charles Nix, Jan Hendrik Weber, Alexander Roth, Juan Villanueva, Terrance Weinzierl & Tom Rickner<br>2019

---

<br><p align='center'><a href=''><img src='https://gist.githack.com/kvpb/3dddcddf0d4fd0ee55ea95dab564dfff/raw/ffa83b023444f38cb18744787892a153e71db4ab/W.SVG' alt="Always win."></a>
<br><a href='http://kvpb.co'><img src='https://gistcdn.githack.com/kvpb/c80594e9079e857c55c36dec49a1a2d7/raw/eec54d5821dc092ad910635141c4e4feebf07565/kvpbssymbol.svg'></a><br><!--
<b>Karl V. P. B. `<code>kvpb</code>`<br>
カール・ビンセント・ピエール・ベルティン</b><br>
<b>AKA&nbsp;&nbsp;Karl Thomas George West `<code>ktgw</code>`<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;カール・トーマス・ジョージ・ウェスト</b><br>
<a href='https://x.com/ktgwkvpb'>X</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href='https://bsky.app/profile/kvpb.bsky.social'>Bluesky</a><br>-->
<img src='https://gistcdn.githack.com/kvpb/f5f75716dd024cc48f8dc28176c0b642/raw/e5344bebf926b378faeb208724ae97f4e06639ca/kvpbsesrbrating.svg'></p>
<!--_____ __              _____
___  / /              __  /
__  ' / ___ __  __ __ _  / 
_  , | _  _` / _/ `_/_  /  
/_/|_|__\__,/__/_/` _/_/   
_____ __           ________
___ // /           ____  _/
__ // /            ___  /  
_, ` /             __  /   
 \_/               _/_/    
________           _______ 
___    /           ___  __\
__  __/            __  /__ 
_  /               _  // / 
/_/                \____/  
________           ________
___    /           __  /  /
__  __/            _  '  / 
_    |             _ ,, /  
/____/             |/ |/   -->
