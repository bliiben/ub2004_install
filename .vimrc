set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/emmet-vim'
Plugin 'rainglow/vim'
Plugin 'yegappan/mru'
Plugin 'kien/ctrlp.vim'
call vundle#end()

filetype plugin indent on
syntax on
set number
set mouse=a
set textwidth=80
" This is because of the weird backspace behaviour
set backspace=indent,eol,start

nnoremap <CR> G
let mapleader = " "
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>bp :! python3 %:p<CR>
" Routine to run anything more complicated
nnoremap <leader>br :! sh run.sh<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" cache Vim buffer
nnoremap <leader><leader> <C-^>
nnoremap <leader>b :MRU<CR>

nnoremap sh :vsplit<CR>
nnoremap sl :vsplit<CR><C-w>l
nnoremap sk  :split<CR><C-w>k
nnoremap sj  :split<CR><C-w>j

let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'c'

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

colorscheme peacock

inoremap jk <ESC>
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
