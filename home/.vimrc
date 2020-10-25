
" ------------------  basic --------------------
set wrap
syntax on                                             " enable then color ok
set nu
set norelativenumber
set nocompatible
"set showmode
set wildmenu
set encoding=utf-8
set fileencodings=utf-8
set go=                                               " no graphic
set ruler                                             " show cursor

set scrolloff=5                                       " scroll down, nu before last line



set backspace=indent,eol,start                        " Make backspace work as you would expect.
set hidden                                            " Switch between buffers without having to save first.


set splitbelow

set splitright

" ------------------ visuals --------------------
colorscheme desert
set laststatus=1                                      " bottom bar when wins amount > 1
set showtabline=1                                     " topTab bar when tabs amount > 1

" -------------------  Map  --------------------

" 0. nop 
map e <nop>
map , <nop>
map s <nop>
map S <nop>
map t <nop>
map R <nop>
map <CAPS> <nop>

" 1. cursor direction
inoremap <C-f> <right>
inoremap <C-b> <left>
inoremap <C-n> <down>
inoremap <C-p> <up>

" 2. insert & save
inoremap ss <ESC>:w<CR>
inoremap jk <ESC>
nnoremap ss :w<CR>
map <C-s> :w<CR>
cmap w!!:write !sudo tee % > /dev/null

nnoremap qq :q<CR>

" 3. sidebar
nnoremap tt :Vexplore<CR>
nnoremap ee :Explore<CR>

let g:netrw_banner = 0                                   " remove banner in netrw
let g:netrw_winsize = 25
let g:netrw_browse_split = 4              " 2:vertical/3:tab/4:last window

" 4. window ( U/D/L/R )
map <left> <C-W>h
map <down> <C-W>j
map <up> <C-W>k
map <right> <C-W>l

" 5. tab    (C-j/k)
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
"nnoremap <up> :tabfirst<CR>
"nnoremap <down> :tablast<CR>

" 6. buffer action

set hidden                             " enable hid buf
map <tab> :bn<CR>                      " bNext
map <s-tab> :bp<CR>

nnoremap bb :bd<CR>

" ------------------ Auto Cmd ------------------
set autochdir


" tab to space
set expandtab
set tabstop=2
set shiftwidth=2

" ---------------- Search ---------------- 
"set cursorline
set hlsearch
set incsearch

" ------------------------ edit --------------
set nobackup
set noswapfile
set noerrorbells
set history=300

set timeout                          " ----------- map timeout --------------
set timeoutlen=250


" --------------- auto source ------------------
augroup atsource
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
