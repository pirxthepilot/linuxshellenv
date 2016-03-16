set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
syntax enable
set background=dark

nmap <F9> :set number! number?<cr>
nmap <F10> :set paste! paste?<cr>
nmap <F11> :set ignorecase! ignorecase?<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

execute pathogen#infect()
filetype plugin indent on
set nocompatible
let g:vim_markdown_folding_disabled = 1

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
