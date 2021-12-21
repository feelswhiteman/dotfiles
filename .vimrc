" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jackguo380/vim-lsp-cxx-highlight'


" --- color schemes
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'

" Initialize plugin system
call plug#end()

syntax on
set number
"colorscheme onedark
set nuw=4

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
filetype indent on
filetype plugin indent on
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"




" --- key bindings

map <C-n> :NERDTreeToggle<CR>
