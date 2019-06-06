" General settings
set nocompatible
filetype plugin indent on
syntax on

set ttyfast                    " Faster redrawing
set lazyredraw                 " Only when necessary
set encoding=utf-8             " Unicode
set incsearch                  " Incremental search
set hlsearch                   " Highlight search term
set ignorecase                 " Search is case insensitive
set smartcase                  " Unless your search has capital letters
set mouse=a                    " Allow mouse integration
set backspace=indent,eol,start " Fix delete key
set showtabline=2              " Always show tabs
set cursorline                 " Highlight cursor line
set noshowmode                 " Don't show the mode you're in
set hidden                     " Can navigate through buffers even if they're not saved
set autoread                   " Re-read files if unmodified
set linebreak                  " Avoid wrapping lines in the middle of a word.
set number                     " Line numbers
set expandtab shiftround smartindent autoindent

color desert
set termguicolors
hi CursorLine term=bold cterm=bold guibg=NONE gui=bold " Bold cursorline

" Persistent undo
if has('persistent_undo')
  let undo_dir = expand('$HOME/.vim/undo_dir')
  if !isdirectory(undo_dir)
    call mkdir(undo_dir, "p", 0760)
  endif
  set undodir=$HOME/.vim/undo_dir
  set undofile
endif

" Better find command
set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set wildignore+=**/dist/**
set wildignore+=**/cov/**
set wildignore+=**/coverage/**
set wildignore+=**/po/**
set wildignore+=**/lang/**

" Mappings
let mapleader = "\<space>"
nnoremap Q <Nop>
inoremap <c-c> <esc>
" Ctrl+S saves
nnoremap <c-s> <esc>:w<CR>
inoremap <c-s> <esc>:w<CR>
" Move between splits <ctrl-direction>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
" Move through buffers
nnoremap gb :bn<cr>
nnoremap gB :bp<cr>
" Delete buffer
nnoremap <c-q> :bd<cr>
" Indent file
nnoremap <leader><Tab> <esc>gg=G``zz
" Go to first character of line (no space)
nnoremap 0 ^
" Disable arrow keys
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
" Use tab to indent blocks
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >gv
vnoremap <s-tab> <gv
nnoremap < <Nop>
vnoremap < <Nop>
