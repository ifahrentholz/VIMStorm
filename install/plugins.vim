"
" VIMStorm IDE configuration : plugin definitions
"
" author: Ingo Fahrentholz <ingof.work@gmail.com>
" source: https://github.com/ifahrentholz/VIMStorm
" year  : 2015
"

call plug#begin($HOME.'/.vim/plugins/plugged')


" ##############################################################################
" color
" ##############################################################################

Plug 'https://github.com/ifahrentholz/vim-colorschemes'


" ##############################################################################
" file browser
" ##############################################################################

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'


" ##############################################################################
" VCS
" ##############################################################################

Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'airblade/vim-gitgutter'


" ##############################################################################
" navigation
" ##############################################################################

Plug 'majutsushi/tagbar'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'terryma/vim-multiple-cursors'
Plug 'bling/vim-airline', { 'do' : $HOME.'/.vim/install/fonts/install.sh' }
Plug 'rking/ag.vim'


" ##############################################################################
" syntax libs
" ##############################################################################

Plug 'vim-scripts/MatchTag'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'elzr/vim-json'
Plug 'moll/vim-node'
Plug 'isRuslan/vim-es6'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'


" ##############################################################################
" code quality & syntax checkers
" ##############################################################################

Plug 'heavenshell/vim-jsdoc'
Plug 'scrooloose/syntastic'
Plug 'editorconfig/editorconfig-vim'
Plug 'marijnh/tern_for_vim', { 'do' : 'npm install' }


" ##############################################################################
" workflow helper
" ##############################################################################

Plug 'tpope/vim-surround'
Plug 'https://github.com/mattn/emmet-vim/'
Plug 'junegunn/vim-easy-align'
Plug 'Townk/vim-autoclose'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }


call plug#end()
