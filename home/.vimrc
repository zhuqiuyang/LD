
" ------------------  basic --------------------
set wrap
syntax on                                             " enable then color ok
set nu
set norelativenumber
set nocompatible

" ------------------ visuals --------------------
colorscheme desert


" -------------------  Map  --------------------

" 0. nop 
map . <nop>
map s <nop>
map S <nop>
map t <nop>
map R <nop>
map <CAPS> <nop>

" 1. cursor direction
inoremap <C-f> <right>
inoremap <C-b> <left>
inoremap hh <left>
inoremap <C-n> <down>
inoremap jj <down>
inoremap <C-p> <up>
inoremap kk <up>

" 2. insert & save
inoremap ii <ESC>
inoremap ss <ESC>:w<CR>
nnoremap ss :w<CR>
nnoremap .. :source $MYVIMRC<CR>

" 3. sidebar
nnoremap tt :Vexplore<CR>

let g:netrw_banner = 0                                   " remove banner in netrw
let g:netrw_winsize = 25


" ------------------ Auto Cmd ------------------
set autochdir

" bottom

" support mouse
set encoding=utf-8
" tab to space
set expandtab
set tabstop=2
set shiftwidth=2

" ---------------- Search ---------------- 
set cursorline
set hlsearch

set incsearch

" --- edit
set nobackup
set noswapfile
set noerrorbells
set history=1000

set timeout                          " ----------- map timeout --------------
set timeoutlen=250



