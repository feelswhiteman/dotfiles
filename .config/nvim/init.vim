call plug#begin()
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'vim-airline/vim-airline'
 Plug 'ap/vim-css-color'
 Plug 'ryanoasis/vim-devicons'

 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'

 Plug 'mboughaba/i3config.vim'

 Plug 'dracula/vim'
call plug#end()

colorscheme dracula
hi Normal ctermbg=none
let g:airline_theme='dracula'

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set smartcase
set mouse=v                 " middle-click paste with
set nohlsearch              " no highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set relativenumber          " add relative line numbers
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set clipboard=unnamedplus " using system clipboard
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
set backupdir=~/.cache/vim  " Directory to store backup files.


" --- keybindings
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

nmap <C-s> :w <CR>
imap <C-s> <Esc>:w<CR>a

map <A-1> :b 1 <CR>
map <A-2> :b 2 <CR>
map <A-3> :b 3 <CR>
map <A-4> :b 4 <CR>
map <A-5> :b 5 <CR>
map <A-6> :b 6 <CR>
map <A-7> :b 7 <CR>
map <A-8> :b 8 <CR>
map <A-9> :b 9 <CR>
map <A-0> :b 10 <CR>

map <A-h> :bprevious <CR>
map <A-l> :bnext <CR>

map ! :!

nmap s :s//g<Left><Left>
nmap S :%s//g<Left><Left>
nnoremap Q <nop>

" --- airline configuration
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 1 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode'
let g:airline#extensions#xkblayout#enabled = 0
let g:airline#extensions#tabline#enabled = 1 "Показ всех буферов

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" css-color config
command! ColorToggle call css_color#toggle()
