set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
syntax enable
set background=dark

nmap <F9> :set number! number?<cr>
nmap <F10> :set paste! paste?<cr>
nmap <F11> :set ignorecase! ignorecase?<cr>

execute pathogen#infect()
filetype plugin indent on
set nocompatible
let g:vim_markdown_folding_disabled = 1
