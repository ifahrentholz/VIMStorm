"
" IfWebVim configuration : global settings
"
" author: Ingo Fahrentholz <ingof.work@gmail.com>
" source: https://github.com/ifahrentholz/IfWebVim
" year  : 2015
"

" ##############################################################################
" font & color settings
" ##############################################################################

syntax on                               " syntax highlighting
set background=dark                     " use dark background setting
set t_Co=256                            " use 256 colors
set guifont=Monaco:h14                  " set font family


" ##############################################################################
" indentation settings
" ##############################################################################

set nowrap                              " nowrap long lines
set autoindent                          " auto indentation
set copyindent                          " auto-indenting for code paste
set ts=2                                " set indentation to two (2) spaces
set smarttab                            " insert tabs on the start of a line
set expandtab                           " indentation without hard tabs
set shiftwidth=2                        " indentation without hard tabs
set softtabstop=2                       " indentation without hard tabs
set shiftround                          " multiple shiftwidth when '<' and '>'
set linespace=3                         " space between the lines


" ##############################################################################
" search settings
" ##############################################################################

set showmatch                           " show bracket matches
set incsearch                           " show search results as I type
set ignorecase                          " ignore case in search
set hlsearch                            " highlight all search matches
set smartcase                           " pay attention to case when caps used


" ##############################################################################
" vi / editor settings
" ##############################################################################

set encoding=utf-8                      " use UTF-8 encoding
set nocompatible                        " don't be compatible with old vim
set number                              " show line numbers
set hidden                              " work with unsafed buffers
set cursorline                          " highlight current line
set mouse=a                             " enable mouse support
set ttimeoutlen=100                     " decrease timeout faster insert with O
set vb                                  " enable visual bell
" set vb t_vb=                            " prevent vi making beep
set ruler                               " show row and column in footer
set scrolloff=2                         " minimum lines above/below cursor
set laststatus=2                        " always show status bar
set clipboard=unnamedplus               " use the system clipboard
set wildmenu                            " enable bash style tab completion
set wildmode=list:longest,full          " completion in the command line via tab
set virtualedit=all                     " cursor can move beyond defined text
set wrapscan                            " set the search scan to wrap lines
set splitbelow                          " open new split windows to the bottom
set foldmethod=manual                   " folding manual
set nospell                             " no spell check
