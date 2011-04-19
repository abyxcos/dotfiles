" Use Vim settings, rather than Vi settings
" This must be first, because it changes other options as a side effect.
set nocompatible
" Switch syntax highlighting on, when the terminal has colors syntax on
syntax on
" Spellcheck on
set spell
" Automatically indent new lines
" set autoindent
" filetype indent on
" Makes the / and ? commands incremental
set incsearch
" Ignore case differences in regular expressions
set ignorecase
" If there are caps, go case-sensitive
set smartcase

" When there is a previous search pattern, highlight all its matches
set nohls
" Precede each line displayed with its current line number
" set number
" Display a row/column ruler on the colon command line
set ruler
" Note matching '{' and '(' for '}' and ')' characters
set noshowmatch
" Disable highlighting matching parens
let loaded_matchparen = 1

set title
set hidden		" you can change buffers without saving
set iskeyword+=_,$,@,%,#	" none of these are word dividers
set noerrorbells	" don't make noise
set visualbell

" Display the current editor mode and a ``modified'' flag
set showmode
" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
" Move through displayed lines in wrap mode
"noremap <buffer> <silent> <Up>	gk
"noremap <buffer> <silent> <Down>	gj
"noremap <buffer> <silent> <Home>	g<Home>
"noremap <buffer> <silent> <End>	g<End>
"noremap <buffer> <silent> k gk
"noremap <buffer> <silent> j gj
"noremap <buffer> <silent> 0 g0
"noremap <buffer> <silent> $ g$
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
" Keep 1000 lines of command line history
set history=1000
" The value of this option influences when the last window will have a
" status line:
"		0: never
"		1: only if there are at least two windows
"		2: always
set laststatus=2
" No startup messages
set shm+=Im
" cd into the file's directory
" set autochdir
" Disable folding
" set nofoldenable
" Enable filetype detection
filetype on
" Enable filetype-specific plugins
filetype plugin on

" Theme
"colorscheme molokai
colorscheme cloudhead

" Other stuff
set termencoding=utf-8
set ts=3

" vim-latex settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
