call plug#begin('~/.vim/plugged')
Plug 'wakatime/vim-wakatime'
Plug 'dkarter/bullets.vim'
Plug 'morhetz/gruvbox'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'hard'

syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set number relativenumber
set hlsearch
set ruler

highlight Comment ctermfg=gray

autocmd filetype c map <F9> :w <CR> :!gcc -g % && ./a.out <CR>
autocmd filetype python map <F9> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype cpp map <F9> :w <CR> :!g++ -std=c++11 -g % && ./a.out <CR>
""autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>



inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

nnoremap Y "*y
vnoremap Y "*y
nnoremap yY ^"*y$

