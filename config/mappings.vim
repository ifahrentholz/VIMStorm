"
" VIMStorm configuration : autocommands
"
" author: Ingo Fahrentholz <ingof.work@gmail.com>
" source: https://github.com/ifahrentholz/VIMStorm
" year  : 2015
"

" ##############################################################################
" leader key
" ##############################################################################

let mapleader = ","                     " define the leader key


" ##############################################################################
" remap backtick for better mark jumping
" ##############################################################################

nnoremap ' `                            " remap backtick for easer mark jumps
nnoremap ` '                            " remap backtick for easer mark jumps


" ##############################################################################
" keyboard shortcuts
" ##############################################################################

nmap <space> :                          " space to go in command mode
nmap <leader>nt :NERDTreeToggle         " easy open nerdtree
nmap t o<ESC>k                          " insert blank line above
nmap T O<ESC>j                          " insert blank line below
inoremap jj <Esc>                       " handier esc mapping on 'jj'
nnoremap <silent> ss :split<CR>         " quick horizontal split
nnoremap <silent> vv :vsplit<CR>        " quick vertical split
nn <leader>sl <c-w><s-h>                " move split left
nn <leader>sr <c-w><s-l>                " move split right
nn <leader>sb <c-w><s-j>                " move split up
nn <leader>st <c-w><s-k>                " move split down


" ##############################################################################
" easy window navigation
" ##############################################################################

nmap <C-h> <C-w>h                       " left
nmap <C-j> <C-w>j                       " up
nmap <C-k> <C-w>k                       " down
nmap <C-l> <C-w>l                       " right


" ##############################################################################
" change working directory
" ##############################################################################

cmap cwd lcd %:p:h                    " cwd to current file dir
cmap gn echo bufname("%")             " TODO
