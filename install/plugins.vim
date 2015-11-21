"
" VIMStorm IDE configuration : plugin definitions
"
" author: Ingo Fahrentholz <ingof.work@gmail.com>
" source: https://github.com/ifahrentholz/VIMStorm
" year  : 2015
"

call plug#begin($HOME.'/.vim/plugins/plugged')

function! InstallFonts(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed'
    exec ":!git submodule init && git submodule update"
    exec ":!~/.vim/install/fonts/install.sh"
  endif
endfunction

" ##############################################################################
" color
" ##############################################################################

" Plug 'https://github.com/ifahrentholz/vim-colorschemes'


" ##############################################################################
" file browser
" ##############################################################################

" Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/nerdcommenter'


" ##############################################################################
" VCS
" ##############################################################################

" Plug 'https://github.com/tpope/vim-fugitive.git'
" Plug 'airblade/vim-gitgutter'


" ##############################################################################
" navigation
" ##############################################################################

" Plug 'https://github.com/kien/ctrlp.vim.git'
" Plug 'terryma/vim-multiple-cursors'
Plug 'bling/vim-airline', { 'do': function('InstallFonts') }


" ##############################################################################
" syntax libs
" ##############################################################################

" Plug 'othree/html5.vim'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'elzr/vim-json'
" Plug 'moll/vim-node'


" ##############################################################################
" code quality & syntax checkers
" ##############################################################################

" Plug 'scrooloose/syntastic'
" Plug 'editorconfig/editorconfig-vim'
" Plug 'bronson/vim-trailing-whitespace'
" Plug 'marijnh/tern_for_vim', { 'do' : 'npm install' }


" ##############################################################################
" workflow helper
" ##############################################################################

" Plug 'tpope/vim-surround'
" Plug 'https://github.com/mattn/emmet-vim/'
" Plug 'junegunn/vim-easy-align'
" Plug 'Townk/vim-autoclose'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }


call plug#end()
