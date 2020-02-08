" Unnamed

set nocompatible " 'Make VIM more useful.' [i] Breaks VI backwards compatibility. /!\ Must be first.

scriptencoding utf8 " Set the character encoding used in the script to UTF-8.

au BufRead,BufNewFile * startinsert " Start VIM in insert mode.

set ttyfast " Set indicated terminal connection to fast.

set encoding=utf8 " Set encoding to UTF-8.
set fileformats=unix,mac,dos " Set standard file format to UNIX.

set nobackup " Disable backup before file overwriting.
set writebackup " Enable temporary backup before file overwriting.
set noswapfile " Disable swapfile use for the buffer.

set viminfo="" " Disable .viminfo file writing.

let g:netrw_dirhistmax=0 " Set the history size to 0, suppressing the history, disabling writing to the history file.
set history=20 " Set history capacity to 20 lines.

set binary
set noendofline
" Disable NL autoadding at EOF.

" Input: Keyboard & Mouse

set timeoutlen=1000 ttimeoutlen=-1 " Set the time in milliseconds that is waited for a key code or mapped key sequence to complete to 1000.

set clipboard=unnamed " Set the clipboard to the OS'.

set mouse=a " Enable the mouse in all modes.
set ttymouse=xterm2 " Set the terminal type for which mouse codes are to be recognized.

nnoremap <C-Up> gg
inoremap <C-Up> <Esc>gg<Insert>
" 
nnoremap <C-Down> G
inoremap <C-Down> <Esc>G<Insert>
" 
silent! unmap <C-Left>
nnoremap <C-Left> 0
inoremap <C-Left> <Esc>0<Insert>
" 
noremap <C-Right> $
noremap! <C-Right> <Esc>$<Insert>
" 
nnoremap <C-q> :qa!<CR>
inoremap <C-q> <Esc>:qa!<CR>
"map <C-W> :q!<CR>
"map! <C-W> :q!<CR>
 " Quit Without Saving
nnoremap <C-w> :wq<CR>
inoremap <C-w> <Esc>:wq<CR>
 " Save & Quit
noremap <C-n> :enew<CR>
noremap! <C-n> <Esc>:enew<CR>
 " New
noremap <C-t> :tabnew<CR>
noremap! <C-t> <Esc>:tabnew<CR>
 " New Tab
noremap <C-o> :e.<CR>
noremap! <C-o> <Esc>:e.<CR>
 " Open...
"map <C-w> :close<CR>
 " Close (Tab)
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR><Insert><Right>
"map <C-s> :w<CR>
"map! <C-s> <Esc>:w<CR>
 " Save
noremap <C-z> u
noremap! <C-z> <Esc>u<CR><Insert><Right>
 " Undo
"map <C-r> 
"map! <C-r> 
 " Redo
noremap <C-c> y
noremap! <C-c> <Esc>y<CR><Insert>
 " Copy
noremap <C-x> d
noremap! <C-x> <Esc>d<CR><Insert>
 " Cut
noremap <C-v> p
noremap! <C-v> <C-r>"
 " Paste
noremap <C-a> ggVG
noremap! <C-a> <Esc>ggVG<CR>
 " Select All
noremap <C-f> /\c
noremap! <C-f> <Esc>/\c
 " Find...
noremap <F3> n
noremap! <F3> <Esc>n<CR><Insert>
 " Find Next
"map <C-h> :%s/
"map! <C-h> <Esc>:%s/
 " Replace All
" Set the key maps to a Macintosh-like key mapping.
"nnoremap & 1
"nnoremap é 2
"nnoremap " 3
"nnoremap ' 4
"nnoremap ( 5
"nnoremap § 6
"nnoremap è 7
"nnoremap ! 8
"nnoremap ç 9
"nnoremap à 0
" Make the FR AZERTY keyboard numeric keys function like the US QWERTY's.

" Output: UX, GUI & SUI

set shortmess=I " Hide the VIM launch intro message.

set scrolloff=2 " Set the scrolling to start 2 lines before the horizontal window border.

set cmdheight=2 " Set command bar height to 2 lines.

set noexpandtab " Disable hard tabs to soft tabs converting.
set smarttab " Set tab stops according to shift width.
set shiftwidth=4 " Set each step of autoindent number of spaces to 2.
set tabstop=4 " Set tab stop length to 2 columns.

set listchars=eol:␤,tab:␉\ ,trail:␠,nbsp:␢ " Display special characters.
"set listchars=eol:⏎,tab:⇥\ ,trail:␣,nbsp:⍽
set list

set laststatus=2 " Display the status line.
set statusline=%f\ %{strftime(\"%Y.%m.%d@%H:%M:%S\",getftime(expand(\"%:p\")))}\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P " Set the status line format to the defaults with a last modified timestamp.

set ruler " Display current line-column numbers.
set number " Display line numbers.

set showmatch " Enable matching brackets highlighting.
syntax enable " Enable syntax highlighting.

set cursorline " Enable current line highlighting.

"set background=dark " Set the dark background.
if strftime("%H") > 7 && strftime("%H") < 19
	set background=light
else
	set background=dark
endif " Set the brightness on which try to use colors that look good based on the time of day.
"colorscheme hybrid " Set the color scheme to hybrid.
if strftime("%H") < 19
	colorscheme github
else
	colorscheme hybrid
endif " Set the color scheme according to the time of day.

set noerrorbells " Disable error bells.
set novisualbell " Disable error visual bell.
