"
" VIMStorm IDE configuration : plugins configuration
"
" author: Ingo Fahrentholz <ingof.work@gmail.com>
" source: https://github.com/ifahrentholz/VIMStorm
" year  : 2015
"

" ##############################################################################
" rename file
" ##############################################################################
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction

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
" AG (the_silver_searcher)
" ##############################################################################

" open last edited file
nmap <leader>w :Ag!

" start searching from root
 let g:ag_working_path_mode="r"


" ##############################################################################
" Tagbar
" ##############################################################################

" toggle the tagbar
nmap <leader>tb :TagbarToggle<CR>


" ##############################################################################
" emmet
" ##############################################################################

let g:user_emmet_leader_key  = '<leader>'


" ##############################################################################
" airline
" ##############################################################################

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1


" ##############################################################################
" editorconfig
" ##############################################################################

" to avoid issues with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']


" ##############################################################################
" syntastic
" ##############################################################################

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list            = 0
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0

let g:syntastic_check_on_open            = 1
let g:syntastic_enable_signs             = 1
let g:syntastic_javascript_checkers      = ['eslint']
let g:syntastic_html_checkers            = ['tidy']
let g:syntastic_vim_checkers             = ['vimlint']
let g:syntastic_json_checkers            = ['jsonlint']
let g:syntastic_yaml_checkers            = ['js-yaml']
let g:syntastic_scss_checkers            = ['scss-lint']
let g:syntastic_css_checkers             = ['csslint']
let g:syntastic_handlebars_checkers      = ['handlebars']
let g:syntastic_tpl_checkers             = ['handlebars']

" get available js linters
function! GetJslinters()
    let l:linters = [ ['eslint', '.eslintrc'], ['jshint', '.jshintrc'] ]
    let l:available = []
    for l:linter in l:linters
       if executable(l:linter[0])
            call add(l:available, l:linter)
       endif
    endfor
    return l:available
endfunction

" check if the path to see if a linter config is present
function! Jslinter(path, linters)
    let l:dir = fnamemodify(a:path, ':p:h')

    if(l:dir == '/')
        return ''
    endif

    for l:linter in a:linters
        if filereadable(l:dir . '/' . l:linter[1])
            return l:linter[0]
        endif
    endfor

    return Jslinter(fnamemodify(l:dir, ':h'), a:linters)
endfunction

" set the jslinter into Syntastic
function! SyntasticSetJsLinter()

    let l:availableLinters = GetJslinters()

    " look for linter config in the current folder
    let l:jslinter = Jslinter(expand('%:p'), l:availableLinters)
    if l:jslinter == ''
        " otherwise look into the home dir
        let l:jslinter = Jslinter($HOME, l:availableLinters)
    endif

    " configure the linter
    if l:jslinter != ''
        let g:syntastic_javascript_checkers=[l:jslinter]
    endif
endfunction

call SyntasticSetJsLinter()


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
