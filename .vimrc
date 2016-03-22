set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Other plugins
Plugin 'jnurmine/Zenburn'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'saltstack/salt-vim'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

syntax enable
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set background=dark

nmap <F9> :set number! number?<cr>
nmap <F10> :set paste! paste?<cr>
nmap <F11> :set ignorecase! ignorecase?<cr>

" Split screen navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Themes
colorscheme zenburn 

" Markdown options
let g:vim_markdown_folding_disabled = 1

" Colorscheme switcher options
let g:colorscheme_switcher_exclude_builtins=1

" Python options
let python_highlight_all=1
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

" flake8 options
autocmd FileType python map <buffer> <F12> :call Flake8()<CR>

" airline options
set laststatus=2
let g:airline_theme='murmur'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#branch#empty_message=''
let g:airline_powerline_fonts=1
