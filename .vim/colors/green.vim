" A green colorscheme

" Maintainer:  https://github.com/julien
" Last Change: 2018/09/21

highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "green"

hi ColorColumn ctermbg=10 guibg=Green
hi Comment ctermfg=10 guifg=Green
hi Comment ctermfg=10 guifg=Green
hi Constant ctermfg=10 guifg=Green
hi CursorLine term=none cterm=none
hi Directory ctermfg=10 guifg=Green
hi Identifier ctermfg=10 guifg=Green
hi LineNr ctermfg=10 guifg=Green
hi MoreMsg ctermfg=10 guifg=Green
hi NonText ctermfg=10 guifg=Green
hi Normal ctermbg=0 ctermfg=10 guibg=Black guifg=Green
hi Operator ctermfg=10 guifg=Green
hi PreProc ctermfg=10 guifg=Green
hi Search ctermbg=10 guifg=Green
hi Special ctermfg=10 guifg=Green
hi Statement cterm=NONE ctermfg=10 guifg=Green
hi StatusLineTerm ctermbg=15 guibg=White
hi StatusLineTermNC ctermbg=15 guibg=White
hi String ctermfg=10 guifg=Green
hi Todo cterm=NONE ctermfg=green gui=NONE guifg=White guibg=Green
hi Type ctermfg=10 guifg=Green
hi Visual term=reverse ctermbg=10 ctermfg=0 guibg=Green guifg=Black
