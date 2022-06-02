set number
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
syntax on

