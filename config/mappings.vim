"
" VIMStorm IDE configuration : autocommands
"
" author: Ingo Fahrentholz <ingof.work@gmail.com>
" source: https://github.com/ifahrentholz/VIMStorm
" year  : 2015
"

" ##############################################################################
" leader key
" ##############################################################################

let mapleader = ","


" ##############################################################################
" remap backtick for better mark jumping
" ##############################################################################

nnoremap ' `
nnoremap ` '


" ##############################################################################
" keyboard shortcuts
" ##############################################################################

" open last edited file
nmap <leader>. :e#<CR>

" space to go in command mode
nmap <space> :

" easy open nerdtree
nmap <leader>nt :NERDTreeToggle

" insert blank line above
nmap t o<ESC>k

" insert blank line below
nmap T O<ESC>j

" handier esc mapping on 'jj'
inoremap jj <Esc>

" quick horizontal split
nnoremap <silent> ss :split<CR>

" quick vertical split
nnoremap <silent> vv :vsplit<CR>

" move split left
nn <leader>sl <c-w><s-h>

" move split right
nn <leader>sr <c-w><s-l>

" move split up
nn <leader>sb <c-w><s-j>

" move split down
nn <leader>st <c-w><s-k>


" ##############################################################################
" easy window navigation
" ##############################################################################

" left
nmap <C-h> <C-w>h
" up
nmap <C-j> <C-w>j
" down
nmap <C-k> <C-w>k
" right
nmap <C-l> <C-w>l


" ##############################################################################
" change working directory
" ##############################################################################


" cwd to current file dir
cmap cwd lcd %:p:h
" TODO
cmap gn echo bufname("%")
