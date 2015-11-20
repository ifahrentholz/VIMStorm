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
