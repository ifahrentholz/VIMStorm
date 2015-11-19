"
" VIMStorm configuration : global settings
"
" author: Ingo Fahrentholz <ingof.work@gmail.com>
" source: https://github.com/ifahrentholz/VIMStorm
" year  : 2015
"

" ##############################################################################
" font & color settings
" ##############################################################################

" syntax highlighting
syntax on

" use dark background setting
set background=dark

" use 256 colors
set t_Co=256

" set font family
set guifont=Monaco:h14


" ##############################################################################
" indentation settings
" ##############################################################################

" nowrap long lines
set nowrap

" auto indentation
set autoindent

" auto-indenting for code paste
set copyindent

" set indentation to two (2) spaces
set ts=2

" insert tabs on the start of a line
set smarttab

" indentation without hard tabs
set expandtab

" indentation without hard tabs
set shiftwidth=2

" indentation without hard tabs
set softtabstop=2

" multiple shiftwidth when '<' and '>'
set shiftround

" space between the lines
set linespace=3


" ##############################################################################
" search settings
" ##############################################################################

" show bracket matches
set showmatch

" show search results as I type
set incsearch

" ignore case in search
set ignorecase

" highlight all search matches
set hlsearch

" pay attention to case when caps used
set smartcase


" ##############################################################################
" vi / editor settings
" ##############################################################################

" use UTF-8 encoding
set encoding=utf-8

" don't be compatible with old vim
set nocompatible

" show line numbers
set number

" work with unsafed buffers
set hidden

" highlight current line
set cursorline

" enable mouse support
set mouse=a

" decrease timeout faster insert with O
set ttimeoutlen=100

" enable visual bell
set vb

" prevent vi making beep
" set vb t_vb=
"
" show row and column in footer
set ruler

" minimum lines above/below cursor
set scrolloff=2

" always show status bar
set laststatus=2

" use the system clipboard
set clipboard=unnamedplus

" enable bash style tab completion
set wildmenu

" completion in the command line via tab
set wildmode=list:longest,full

" cursor can move beyond defined text
set virtualedit=all

" set the search scan to wrap lines
set wrapscan

" open new split windows to the bottom
set splitbelow

" folding manual
set foldmethod=manual

" no spell check
set nospell

