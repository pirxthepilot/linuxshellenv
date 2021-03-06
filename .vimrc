set nocompatible
set modelines=1
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Other plugins
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'rodjek/vim-puppet'
Plugin 'pearofducks/ansible-vim'
Plugin 'saltstack/salt-vim'
Plugin 'elzr/vim-json'
Plugin 'fatih/vim-go'
Plugin 'morhetz/gruvbox'
Plugin 'hashivim/vim-terraform'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-colorscheme-switcher'
"Plugin 'jnurmine/Zenburn'
"Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

syntax enable
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start
set background=dark
colorscheme gruvbox
let g:gruvbox_termcolors=16
let g:gruvbox_contrast_dark='hard'


" Global hotkeys
nmap <F9> :set number! number?<cr>
nmap <F10> :set paste! paste?<cr>
nmap <F11> :set ignorecase! ignorecase?<cr>

" Split screen navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Syntastic options
let g:syntastic_mode_map = { "mode": "active" }

" Airline options
set laststatus=2
let g:airline_theme='gruvbox'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#branch#empty_message=''
let g:airline_powerline_fonts=1

" Markdown options
let g:vim_markdown_folding_disabled = 1

" Python options
let python_highlight_all=1
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
au FileType python map <buffer> <F12> :call Flake8()<CR>

" Shell script options
au FileType sh set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix

" Puppet options
let g:syntastic_puppet_checkers = ['puppetlint']
let g:syntastic_puppet_puppetlint_args = '--no-autoloader_layout-check'
au FileType puppet map <buffer> <F12> :SyntasticCheck puppet puppetlint<CR>

" Go options
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" Terraform options
let g:terraform_align=1
let g:terraform_fmt_on_save=1

