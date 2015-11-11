call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-endwise'
Plug 'christoomey/vim-tmux-navigator'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-commentary'
call plug#end()

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" Activate matchit.vim
runtime macros/matchit.vim

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

color molokai

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

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
