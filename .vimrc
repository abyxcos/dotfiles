
" --------------
" Initialization
" --------------
set nocompatible		" Use Vim settings, rather than Vi settings
" Call Pathogen to load plugins
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" -----------
" Colorscheme
" -----------
colorscheme cloudhead
set background=dark
set number

" ------
" Indent
" ------
filetype plugin on
syntax on
set autoindent
set smartindent

set foldmethod=syntax

set backspace=indent,eol,start
set tabstop=3
set shiftwidth=3
set encoding=utf-8	" Unicode support
set termencoding=utf-8
set noerrorbells		" Don't make noise
set novisualbell		" Don't flash screen

" -----------
" Status line
" -----------
set showcmd				" Show (partial) command in status line
set showmode			" Show mode in status line
set cmdheight=1		" Set height of command
set laststatus=2		" Always show the status line
set statusline=\ \%f%m%r%h%w\ ::\ %y\ [%{&ff}]\%=\ [%p%%:\ %l/%L]\ 
set wildmenu
set wildmode=longest:full,full

" ------
" Search
" ------
set nohlsearch			" Do not highlight the string we searched
set incsearch			" Incremental search: Highlight while typing
set ignorecase			" Ignore case in regular expressions
set smartcase			" Upper-case sensitive search
set wrapscan			" Searches wrap back to the top of the file

" -----
" Files
" -----
set fileformats=unix
set ruler
set wrap					" Wrap long lines to fit terminal width
" set nobackup			" Disable backup
set swapfile
set updatecount=200	" Write swapfile after X characters
set directory=$HOME/.vim/tmp
set autochdir			" cd into the file's directory
set autoread			" Reread file on changes (non-stupid)
set ttyfast				" Tell vim we're using a fast terminal for redraws
set history=1000
set title				" Set window title with the vim file
set ofu=syntaxcomplete#Complete	" Omni-completion with a popup
set shm=asAI			" Less verbose status/startup messages
set nostartofline		" Remember the cursor position
" set spell				" Spellcheck on
" Note matching '{' and '(' for '}' and ')' characters
set noshowmatch

set hidden		" you can change buffers without saving
set iskeyword+=_,$,@,%,#	" none of these are word dividers

" --------------
" Remapping keys
" --------------
set timeoutlen=3000	" Macros last longer
set ttimeoutlen=50	" Keys respond faster
" Move through displayed lines in wrap mode
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

" -------
" Plugins
" -------

