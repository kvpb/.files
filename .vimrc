" Unnamed

set nocompatible " Make VIM behave in a more useful way. (i) breaks VI backwards compatibility. /!\ must be first.

scriptencoding utf8 " Use the UTF-8 character encoding in the script.

au BufRead,BufNewFile * startinsert " Start VIM in insert mode.

set ttyfast " Indicate a fast terminal connection.

set encoding=utf8 " Use character encoding UTF-8 inside VIM.
set fileformats=unix,mac,dos " First try UNIX, then, macOS and then, DOS end-of-line formats.

set nobackup " Before VIM overwrites a file, do not back it up.
set writebackup " Back up a file, while VIM overwrites it, but discard the backup file.
set noswapfile " Do not create a swapfile for a new buffer.

set viminfo="" " Do not read or store command-line hitory, search string history, input-line history, contents of non-empty registers, marks for several files, file marks pointing to locations in files, last search or substitute pattern, the buffer list or global variables from or into the viminfo file.

let g:netrw_dirhistmax=0 " Suppress history.
set history=30 " Remember 30 command lines in a history table.

set binary
set noendofline
" Do not write EOL for the last line in the file.

" Input: Keyboard & Mouse

set backspace=indent,eol,start " Set the backspace key to backspace by allowing backspacing over autoindent, line breaks (join lines) and the start of insert.

set timeoutlen=1000 ttimeoutlen=-1 " Until VIM receives the complete mapping or key sequence, wait 1000 milliseconds for a key code or mapped key sequence, and time out.

set clipboard^=unnamed,unnamedplus " Use clipboard registers + or *. (i) The * and + registers point to the system clipboard on macOS and Windows; register + points to the system clipboard on Linux-based operating systems, and *, the selection clipboard.

set mouse=a " Use the mouse in almost all modes.
"set ttymouse=xterm2 " Recognize mouse codes for this terminal type.

nnoremap <C-Up> gg
inoremap <C-Up> <Esc>gg<Insert>
nnoremap <C-Down> G
inoremap <C-Down> <Esc>G<Insert>
silent! unmap <C-Left>
nnoremap <C-Left> 0
inoremap <C-Left> <Esc>0<Insert>
noremap <C-Right> $
noremap! <C-Right> <Esc>$<Insert>
"map <A-Up> 
"map <A-Down> 
"map <A-Left> 
"map <A-Right> 
" 
nnoremap <S-Up> v<Up>
inoremap <S-Up> <Esc>v<Up>
vnoremap <S-Up> <Up>
nnoremap <S-Down> v<Down>
inoremap <S-Down> <Esc>v<Down>
vnoremap <S-Down> <Down>
nnoremap <S-Left> v<Left>
inoremap <S-Left> <Esc>v<Left>
vnoremap <S-Left> <Left>
nnoremap <S-Right> v<Right>
inoremap <S-Right> <Esc>v<Right>
vnoremap <S-Right> <Right>
"inoremap <C-S-Up> 
"inoremap <C-S-Down> 
inoremap <C-S-Left> <S-Left><C-Left>
inoremap <C-S-Right> <S-Right><C-Right>
"map <A-S-Up> 
"map <A-S-Down> 
"map <A-S-Left> 
"map <A-S-Right> 
vnoremap <Left> <Esc><Left><Left>
vnoremap <Right> <Esc>
vnoremap <Up> <Esc><Up>
vnoremap <Down> <Esc><Down>
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

" Output: UX, GUI & SUI

set shortmess=I " When VIM starts, do not give the intro message.

set scrolloff=2 " Keep (force-display) at least 2 screen lines above and below the cursor.

set cmdheight=2 " Use 2 lines for the command line.

set noexpandtab " Do not convert hard tabs to soft tabs.
set smarttab " Press tab in front of a line, insert blanks according to shiftwidth.
set shiftwidth=4 " Use 2 spaces for each step of (auto)indent.
set tabstop=4 " Make a tab in the file count for that much spaces.

set listchars=eol:␤,tab:␉\ ,trail:␠,nbsp:␢
"set listchars=eol:⏎,tab:⇥\ ,trail:␣,nbsp:⍽
" Use these strings in list mode and for the list command.
set list " Enable list mode.

set laststatus=2 " Make the last window always have a status line.
set statusline=%f\ %{strftime(\"%Y.%m.%d@%H:%M:%S\",getftime(expand(\"%:p\")))}\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P " Determine the contents of the status line: defaults with last modified timestamp.

set ruler " Show the line and column number of the cursor position separated by a comma.
set numberwidth=1 " Use that minimum of columns for the line number.
set number " Precede each line with its line number.

set showmatch " When a bracket is inserted, briefly jump to the matching one.
syntax enable " Switch on syntax highlighting. Show parts of the text in another font or color.

"execute "set colorcolumn=72,79,80".join( range( 79, 334 ), ',')
set colorcolumn=72,79,80
" Highlight columns 72, 79 for Python and 80 for C. Optionally highlight 'all' columns, every column from column j_n + 1 to column ( j_n + 1 ) + ( 256 - n ), as VIM supports highlighting a maximum of 255 columns.
" Color column 72 off-white, 79 yellow and 80 orange.
set cursorline " Highlight the text line of the cursor.

"set background=dark " Try to use good-looking colors for this type of background.
if 7 < strftime("%H") && strftime("%H") < 19
	set background=light
else
	set background=dark
endif " Try to use good-looking colors for those types of background based on the time of day.
"colorscheme onedark " Load color scheme One Dark.
if 7 < strftime("%H") && strftime("%H") < 19
	colorscheme github
else
	colorscheme ghdark
endif " Use those color schemes according to the time of day.

set noerrorbells " Do not ring the bell (beep or flash screen) for error messages.
set novisualbell " Do not use a visual bell instead.
