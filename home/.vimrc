
" ------------------  basic --------------------
set wrap
syntax on                                             " enable then color ok
set nu
set norelativenumber
set nocompatible
set showmode
set showcmd
set listchars=tab:»·,trail:·
set list
set wildmenu


set autoindent
set encoding=utf-8
set fileencodings=utf-8
set go=                                               " no graphic
set noruler                                             " show cursor

set scrolloff=5                                       " scroll down, nu before last line

let mapleader = ","


set backspace=indent,eol,start                        " Make backspace work as you would expect.
set hidden                                            " Switch between buffers without having to save first.

set linebreak
set splitbelow

set splitright

" ------------------ visuals --------------------
colorscheme desert
"set statusline=%F:\ %l                               " SPC should pre\
set laststatus=0                                      " bottom bar when wins amount > 1
set showtabline=1                                     " topTab bar when tabs amount > 1

" -------------------  Map  --------------------

" 0. nop 
map e <nop>
map , <nop>
map q <nop>
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
" 3. FileExplore
inoremap ss <ESC>:w<CR>
inoremap jj <ESC>
inoremap jk <ESC>

cmap ww:write !sudo tee % > /dev/null

nnoremap e :e 

" ******double click********
nnoremap bb :bd<cr>
nnoremap ss :w<CR>
nnoremap qq :Lexplore<CR>                 " t is used in netrw: for TabNew.
nnoremap \\ :Lexplore<CR>                 " t is used in netrw: for TabNew.
" ww tt

let g:spr = 0
nnoremap <CR> :ls<CR>

let g:netrw_banner = 0                    " remove banner in netrw
let g:netrw_winsize = 25
let g:netrw_browse_split = 4              " 2:vertical/3:tab/4:last window
let g:netrw_altv = 1              " spr
"let g:netrw_alto = 1              " spr

" 4. window ( U/D/L/R )
map <left> <C-W>h
map <down> <C-W>j
map <up> <C-W>k
nnoremap J <C-W>w
nnoremap K <C-W>K
map <right> <C-W>l

" 5. tab    (C-j/k)
nnoremap J :tabprevious<CR>
nnoremap K :tabnext<CR>
nnoremap H :tabfirst<CR>
nnoremap L :tablast<CR>

" 6. buffer action

set hidden                             " enable hid buf
map <tab> :bn<CR>                      " bNext
map <s-tab> :bp<CR>


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
