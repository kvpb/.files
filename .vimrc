" Unnamed

scriptencoding utf8

set nocompatible " 'Make VIM more useful.' [i] Breaks VI backwards compatibility.

set ttyfast " Set indicated terminal connection to fast.

set encoding=utf8 " Set encoding to UTF-8.
set fileformats=unix,mac,dos " Set standard file format to UNIX.

set nobackup " Disable backup before file overwriting.
set writebackup " Enable temporary backup before file overwriting.
set noswapfile " Disable swapfile use for the buffer.

set history=1152 " Set history capacity to 1152 lines.

set binary
set noendofline
" Disable NL autoadding at EOF.

" Input: Keyboard & mouse

set mouse=a " Enable mouse in all modes.
set ttymouse=xterm2 " Set the terminal type for which mouse codes are to be recognized.

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
