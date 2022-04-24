"Custom Vim configuration
set number
set novisualbell

"cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'preservim/nerdtree'
Plug 'vim-python/python-syntax'
call plug#end()

"run python with f5
nmap <F5> <Esc>:w<CR>:!clear;python %<CR>

"colorscheme
syntax enable
set t_Co=256 
let g:vim_monokai_tasty_italic = 1 
colorscheme vim-monokai-tasty

"change lightline mode to nicer theme
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ }

"filexplorer-nerdtree-keymap
map <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '__pycache__', '\.sqlite$', '\.sqlite3$']
set mouse =a
let g:NERDTREEMOUSEMODE=3

"python syntax"

let g:python_highlight_all = 1 
