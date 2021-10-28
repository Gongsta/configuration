call plug#begin('~/.vim/plugged')
Plug 'wakatime/vim-wakatime'
call plug#end()

syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set number
set hlsearch
set ruler
highlight Comment ctermfg=green
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
