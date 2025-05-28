syntax on
set relativenumber
set number
set noswapfile
set nowrap
set shiftwidth=4
set tabstop=4
set ruler
set expandtab
set scrolloff=10
set hlsearch
set incsearch
set autoread
set clipboard=unnamed

filetype plugin on
set omnifunc=syntaxcomplete#Complete

let mapleader=" "

nnoremap <leader>n :noh<CR>
nnoremap <leader>pv :Ex<CR>

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

