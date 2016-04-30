##### Thanks to
* [Michael Kaiser-Nyman](http://www.epicodus.com/)
* [Mathias Bynens](https://mathiasbynens.be/) for [`dotfiles/.osx`](https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.osx)
* [Matt Butcher](http://technosophos.com/)
* [Mark Nichols](http://zanshin.net/) for ~~the reminder~~ [`dotfiles/README.markdown`](https://raw.githubusercontent.com/zanshin/dotfiles/master/README.markdown)

- - -

##### To-do

##### &nbsp;&nbsp;`.osxmavericks`

&nbsp;&nbsp;**First-party: System-wide & user-specific prefs**

- [x] Computer's name
- [x] Standby delay
- [x] iCloud save
- [x] App opening warning
- [x] Open with menu duplicates
- [x] Automatic termination of inactive apps
- [x] Crash reporter
- [ ] Shell [change bash for zsh, & other]
- [ ] Add login screen message (sudo defaults write /Library/Preferences/com.apple.loginwindow LoginWindowText '{ Login screen message }')
- [ ] Restore the 'Save as' menu item
- [ ] Expand as much dialog panes (Save as, Print, Get info, & co) as possible by default
- [ ] Display the current font smoothing ? ('defaults -currentHost read -globalDomain AppleFontSmoothing', but use this shit after testing it on an OS X install to be trashed afterwards.)
- [ ] Terminal windows are focused on as mouse cursor hovers them
- [ ] Add [Command] + [Enter] sends mail in Mail ('defaults write com.apple.mail NSUserKeyEquivalents -dict-add 'Send' '@U21a9')
- [ ] Set security stuff, like Gatekeeper (and the SIP in later OS X versions)
- [ ] ...

&nbsp;&nbsp;**UX / UI**:
- [x] Startup sound
- [x] ~~Highlight color~~
- [x] Plain text view caret notation ASCII control characters display
- [x] Ancient UTF-8 bug in QuickLook
- [ ] ...

&nbsp;&nbsp;**Second-party: User-specific filesystem customs**

- [ ] Directory structure [refer to my Dropbox structure for symlinks etc., which more or less serves as crash test]
  - [x] Personnal directories [check for .files/ anyhow, git clone jhs/, add Misc/, Ops/, & other]
  - [ ] Symbolic links [.zshrc, .bashrc, etc. pointing to .files/ originals, or symlinks to jhs/* scripts]
- [ ] Extract 'tellfiles', and copy them where needed
  - [ ] .DS_Store [since I found no way to set filesystem-wide then dir-specific Finder viewing defaults]
  - [ ] .nomedia [those are for Android, especially for Downloads/, bluetooth/, & similar dirs]
  - [ ] ...
- [ ] Crontabs [frequently clean filesystem from root, check that all ~/jhs/applescripts/ files are symlinked in ~/Library/Scripts/, etc.]
- [ ] Invisible folders and files [using SetFile or chflags, give Invisible attribute to .files/ & jhs/]
- [ ] Retrieve the command line to reset Mail composing window size and position to defaults
- [ ] ...

&nbsp;&nbsp;**Third-party: System-wide & user-specific xenogenetic software & prefs**

- [ ] ...

##### &nbsp;&nbsp;`readme.md`

- [ ] Clean up, maybe as (or some hybrid form with the current one's big parts; since I don't want too much nesting, I could reuse my note-taking structure I built at university):

> ##### &nbsp;&nbsp;`.osxmavericks`
> 1. [ ] Finish `.osxmavericks.`
>   - [ ] Login items
>     - [ ] ...
>   - [x] Dock items
>     - [ ] ...
>   - [ ] Menu bar items
>     - [ ] ...
>   - [ ] Notification center items
>     - [ ] ...
>   - [ ] Bright orange highlighting
>   - [ ] ...
> 2. [ ] Clean `.osxmavericks` up
>   - [ ] List what doesn't work (like trashed legacy content)
>     - [ ] Either fix it if possible or remove it
>   - [ ] Change abbreviations (`bool` becomes `boolean`)
>   - [ ] Arrange global scope
>   - [ ] Either rewrite commentaries as more human-readable or use better commenting
>   - [ ] ...
> 
> ##### &nbsp;&nbsp;`.osxyosemite`
> 1. [ ] Compare `.osxmavericks` and `.osxyosemite`
> 2. [ ] Rewrite `.osxyosemite`
>   1. [ ] Copy `.osxmavericks`
>   2. [ ] Add `.osxyosemite`' exclusive content to the `.osxmavericks` copy
>   3. [ ] Delete `.osxyosemite`
>   4. [ ] Rename the edited `.osxmavericks` copy as `.osxyosemite`
>   5. [ ] Clean `.osxyosemite` up the same way as before
> 3. [ ] Same story for `.osxelcapitan`
> 4. [ ] Do it for `.macosxsnowleopard` also, just removing anachronic stuff

