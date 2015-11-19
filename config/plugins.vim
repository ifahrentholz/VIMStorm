"
" VIMStorm configuration : plugins configuration
"
" author: Ingo Fahrentholz <ingof.work@gmail.com>
" source: https://github.com/ifahrentholz/VIMStorm
" year  : 2015
"

" ##############################################################################
" rename file
" ##############################################################################

map <leader>n :call RenameFile()<cr>


" ##############################################################################
" jsdoc
" ##############################################################################

let g:jsdoc_default_mapping = '0'
let g:jsdoc_allow_input_prompt = '1'


" ##############################################################################
" gundo
" ##############################################################################

nnoremap <F5> :GundoToggle<CR>


" ##############################################################################
" CTRL-P
" ##############################################################################

let g:ctrlp_map = '<leader>f'
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_show_hidden = 1
set wildignore+=*/.sass-cache/*,*.so,*.swp,*.zip,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*
" set wildignore+=*\\.sass-cache\\*,*\\node_modules\\*,*\\.git\\*,*\\.hg\\*,*\\.svn\\*  " Windows ('noshellslash')
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|sass-cache|node_modules|.idea|.sass-cache)$',
  \ 'file': '\v\.(exe|so|dll|jpg|png|jpeg|gif|scssc|*.sw*|.DS_Store)$',
  \ }


" ##############################################################################
" emmet
" ##############################################################################


let g:user_emmet_leader_key  = '<leader>'


" ##############################################################################
" undo works after vim restart
" ##############################################################################


" if exists("+undofile")
"   if isdirectory($HOME . '/.vim/undo') == 0
"     :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
"   endif
"   set undodir=./.vim-undo//
"   set undodir+=~/.vim/undo//
"   set undofile
" endif
