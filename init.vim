call plug#begin('~/.local/share/nvim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/jiangmiao/auto-pairs'
call plug#end()

" some general stuffs
set nocompatible
syntax on
filetype indent plugin on
set wildmenu
set noswapfile
set number
set hlsearch
set ignorecase
set smartcase
set autoindent
set expandtab
set smarttab
set nostartofline
set ruler
set backspace=indent,eol,start
colorscheme monokai
let mapleader=","
map <leader>vm :tabe $MYVIMRC<CR>
map q :q<CR>

" NERDTree 
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_root_markers = ['node_module', 'package.json']
