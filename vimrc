call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
call plug#end()

color railscasts

" More easily return to normal mode
imap jk <ESC>

" Change leader key to spacebar 
let mapleader = "\<Space>"

" Treat wrapped text as individual lines
nmap j gj
nmap k gk

filetype plugin indent on
syntax on
set backspace=indent,eol,start
set expandtab
set softtabstop=2
set shiftwidth=2
set number
set relativenumber
set mouse=a

" Easy access to first character on the line
nmap 0 ^

" Easily resource vimrc
nmap <leader>so :source $MYVIMRC<cr>

" Also use 0 to get to the last character on the line
nmap <leader>0 $
