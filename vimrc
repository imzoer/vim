set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github------------------------------------------------
Bundle 'scrooloose/nerdtree'
Bundle 'yonchu/accelerated-smooth-scroll'
" vim-scripts repos
Bundle 'ctrlp.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" NERDTree config
" auto close NERDTree when exit edited files
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"open nerdtree if enter vi with no file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

let mapleader = "."
let g:mapleader = "."

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>

"default show line number
set number

"highlight search result and f4 to toggle highlight
set hlsearch
map <F4> :set hlsearch!<CR>

"scroll vim screen with mac touchpad
"set mouse=a

"default enable syntax highlight
syntax on

"highlight current line and column
set cursorline
set cursorcolumn

"ignore case when search
set ignorecase

"always show status line
set laststatus=2

"use delete button to del char in insert mode
set bs=2

set ai


