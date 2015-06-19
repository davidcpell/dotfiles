" basics
set sw=2
set relativenumber
syntax on
filetype plugin indent on

" search options
set incsearch
set hlsearch
set ignorecase
set smartcase
nmap <leader>h :nohlsearch<cr>

" mouse options
set ttyfast
set mouse=a
set ttymouse=xterm2

" macros
map <Leader>i mmgg=G`m<CR>
