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

set clipboard=unnamed " Set clipboard to the OS'.

set mouse=a " Enable the mouse in all modes.
set ttymouse=xterm2 " Set the terminal type for which mouse codes are to be recognized.

nnoremap <C-q> :qa!<cr>
inoremap <C-q> <esc>:qa!<cr>
":map <C-W> :q!<Enter>
":map! <C-W> :q!<Enter>
 " Quit Without Saving
nnoremap <C-w> :wq!<cr>
inoremap <C-w> <esc>:wq!<cr>
 " Save & Quit

:map <C-n> :enew<cr>
:map! <C-n> <esc>:enew<cr>
 " New
:map <C-t> :tabnew<Enter>
:map! <C-t> <esc>:tabnew<Enter>
 " New Tab
:map <C-o> :e.<Enter>
:map! <C-o> :e.<Enter>
 " Open...

":map <C-w> :close<Enter>
 " Close (Tab)
nnoremap <C-s> :w<cr>
inoremap <C-s> <esc>:w<cr>
":map <C-s> :w<Enter>
":map! <C-s> <esc>:w<Enter>
 " Save

:map <C-z> u
:map! <C-z> u
 " Undo
":map <C-r> 
 " Redo
:map <C-c> y
:map! <C-c> <esc>y<cr>
 " Copy
:map <C-x> d
:map! <C-x> <esc>d<cr>
 " Cut
:map <C-v> p
:map! <C-v> <C-r>"
 " Paste
:map <C-a> GVgg
:map! <C-a> <esc>GVgg<cr>
 " Select All
:map <C-f> /\c
:map! <C-f> <esc>/\c
 " Find...
:map <F3> n
:map! <F3> n
 " Find Next
:map <C-h> :%s/
:map! <C-h> <esc>:%s/
 " Replace All

" Output: UX, GUI & SUI

set shortmess=I " Hide the VIM launch intro message.

set scrolloff=2 " Set scrolling to start 2 lines before the horizontal window border.

set cmdheight=2 " Set command bar height to 2 lines.

set noexpandtab " Disable hard tabs to soft tabs converting.
set smarttab " Set tab stops according to shift width.
set shiftwidth=4 " Set each step of autoindent number of spaces to 2.
set tabstop=4 " Set tab stop length to 2 columns.

set listchars=eol:␤,tab:␉\ ,trail:␠,nbsp:␢ " Display special characters.
"set listchars=eol:⏎,tab:⇥\ ,trail:␣,nbsp:⍽
"set listchars=tab:│─,trail:╎
set list

set laststatus=2 " Display the status line.
"set statusline= " Set the status line format.

set ruler " Display current line-column numbers.
set number " Display line numbers.

set showmatch " Enable matching brackets highlighting.
syntax enable " Enable syntax highlighting.

set cursorline " Enable current line highlighting.

set background=dark " 
colorscheme hybrid " Set color scheme to hybrid.

set noerrorbells " Disable error bells.
set novisualbell " Disable error visual bell.
