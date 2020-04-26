" Vim plugins 
call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'icymind/NeoSolarized'
Plug 'sjl/gundo.vim'
call plug#end()

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" Syntax Highlighting and colors
syntax on
set showmatch " Show matching parens etc. 

" Dealing with lines
set number relativenumber

set tabstop=4 " Num tabs shown
set softtabstop=4 " Num tabs shown while editing 
set expandtab "ALL TABS ARE SPACES MOFO 

set showcmd
set cursorline

" Dealing with code
filetype indent on  " Load filetype secific files
set wildmenu " shows things on autocomplete

set incsearch " As you type it matches
set hlsearch  " Highlight search 

nnoremap <leader><space> :nohlsearch<CR> " Don't highlight finished searches

"Folding 
set foldenable 
set foldlevelstart=0
set foldnestmax=10
nnoremap <space> za " Open folds with space 

set foldmethod=syntax

" Optimizations
set lazyredraw 

" Bindings 
" remap the caps lock key to escape on linux, unneeded on windows 
"au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

let mapleader="," "comma leader key
nnoremap <leader>u :GundoToggle<CR> " Super undo! 
set foldtext=v:folddashes.substitute(getline(v:foldstart),'/\\*\\\|\\*/\\\|{{{\\d\\=','','g')

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>

" save session
nnoremap <leader>s :mksession<CR>
