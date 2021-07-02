
" Be iMproved

set nocompatible
let mapleader = "\<Space>"


"dein Scripts-----------------------------
" Required:
set runtimepath+=/home/ace/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/ace/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/ace/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
call dein#add('Shougo/defx.nvim')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------



" ==============================

" =========== Neovim ============
"
" fix term bug in neovim
set guicursor=



if has('nvim') && executable('nvr')

  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"

endif

let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3.7'


" ===============================

" ------------------  basic --------------------
set wrap
set foldmethod=indent
"
" enable then color ok
syntax on
set ttyfast

"在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能。
set lazyredraw
set nonu
set norelativenumber
set nocompatible
set showmode
set showcmd
set listchars=tab:»·,trail:·
set list
set wildmenu
set pastetoggle=<F3>

set autoindent

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set fileencodings=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" no graphic
set go=
" show cursor
set noruler

" scroll down, nu before last line
set scrolloff=5


set autoread
au FocusGained,BufEnter * checktime


" Make backspace work as you would expect.
set backspace=indent,eol,start

"允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" Switch between buffers without having to save first.
set hidden

set linebreak
set splitbelow

set splitright
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store


" ------------------ visuals --------------------
colorscheme desert

" bottom bar when wins amount > 1
set laststatus=2
" set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"
" topTab bar when tabs amount > 1
set showtabline=1

" -------------------  Map  --------------------

" 0. nop
map e <nop>
map , <nop>
map q <nop>
map s <nop>
map S <nop>
map t <nop>
map R <nop>
map <tab> <nop>
map <CAPS> <nop>

" 1. cursor direction
inoremap <C-f> <right>
inoremap <C-b> <left>
inoremap <C-n> <down>
inoremap <C-p> <up>
inoremap <C-v> <C-r>"

" 2. insert & save
" 3. FileExplore
inoremap jk <ESC>

cnoremap ww w !sudo tee % > /dev/null

nnoremap e :e

" ******double click********
nnoremap <Leader>w :echo "hello"<CR>
nnoremap ss <ESC>:update<CR>
nnoremap <Leader>d :bd<cr>
" t is used in netrw: for TabNew.
nnoremap qq :Defx<CR>
nnoremap tt :sp\|resize 15\|te<CR>
" ww tt

let g:spr = 0
nnoremap <CR> :ls<CR>

" t is used in netrw: for TabNew.
nnoremap \\ :Lexplore<CR>
" remove banner in netrw
let g:netrw_banner = 0
let g:netrw_winsize = 25

" 2:vertical/3:tab/4:last window
let g:netrw_browse_split = 4
let g:netrw_preview = 0
let g:netrw_alto = 1
let g:netrw_liststyle = 3
"let g:netrw_altv = 1

" 4. window ( HJKL ) && terminal
tnoremap <Esc> <C-\><C-n>
tnoremap jk <C-\><C-n>
tnoremap qq <C-u><C-d><cr>
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k

map <left> <C-W>h
map <down> <C-W>j
map <up> <C-W>k
map <right> <C-W>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

function TerminalStart()
  setlocal modifiable
  setlocal list
  setlocal statusline=%{b:term_title}
endfunction
autocmd TermOpen * :call TerminalStart()


" 5. tab    (C-j/k)
nnoremap K :tabprevious<CR>
nnoremap J :tabnext<CR>
nnoremap H :tabfirst<CR>
nnoremap L :tablast<CR>
set tabpagemax=40

" 6. buffer action

" bNext
map <tab> :bn<CR>
map <s-tab> :bp<CR>


" 7. <F-Key>
noremap <F2> :set number!<CR>


" ------------------ Auto Cmd ------------------
" set autochdir


" tab to space
set expandtab
" Indent 2 spc when hidding tabs
set softtabstop=2
" show exit tab for 2 spc
set tabstop=2
" Indent 2 spc when auto-indent
set shiftwidth=2

" ---------------- Search ----------------
"set cursorline
set hlsearch
"set incsearc
set showmatch

" ------------------------ edit --------------
set nobackup
set noswapfile
set noerrorbells
set history=300

" ----------- map timeout --------------
set timeout
set timeoutlen=250


" --------------- auto source ------------------
augroup atsource
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
"au FocusLost * :wa


source $HOME/.config/nvim/defx.vim

try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry


fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun
command! CleanExtraSpaces call CleanExtraSpaces()
