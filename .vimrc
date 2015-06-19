" basics
set sw=2                         " shiftwidth
set relativenumber
syntax on
filetype plugin indent on
colorscheme desert
set nobackup

" indentation 
filetype plugin indent on 
set autoindent
map <Leader>i mmgg=G`m<CR>

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
