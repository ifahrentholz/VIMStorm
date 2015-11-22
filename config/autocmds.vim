"
" VIMStorm IDE configuration : autocommands
"
" author: Ingo Fahrentholz <ingof.work@gmail.com>
" source: https://github.com/ifahrentholz/VIMStorm
" year  : 2015
"

" ##############################################################################
" force filetype
" ##############################################################################

autocmd BufRead,BufNewFile .eslintrc setfiletype json
autocmd BufRead,BufNewFile .jshintrc setfiletype json


" ##############################################################################
" omni-completion
" ##############################################################################

autocmd InsertLeave * if pumvisible() == 0|pclose|endif


" ##############################################################################
" set markdown support
" ##############################################################################

au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown


" ##############################################################################
" remove trailing whitespace
" ##############################################################################

autocmd BufWritePre * :StripWhitespace
