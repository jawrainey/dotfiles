"Setup Vundle - it's awesome!"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"General enhancements"
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim.git'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-bufferline'
Bundle 'bling/vim-airline'

"Syntax improvements"
Bundle 'jelera/vim-javascript-syntax'
Bundle 'elzr/vim-json'

"Colorschemes"
Bundle 'altercation/vim-colors-solarized.git'

"Bundle settings"
set runtimepath^=~/.vim/bundle/ctrlp.vim

"ctrlp settings"
let ctrlp_show_hidden = 1
let g:ctrlp_cmd = 'CtrlPMixed'

"Basic settings"
set nocompatible
syntax on
set backspace=indent,eol,start
set wildignore=*.swp,*.bak,*.pyc,*.class
set virtualedit=onemore
set number
set mouse=a
set shortmess=I
set showmatch
set autoread
set autochdir

"solarized options
set background=dark
set t_Co=16
silent! colorscheme solarized
set guitablabel=\[%N\]\ %t\ %M
set guifont=Inconsolata:h13

"Search settings"
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

"Indentation settings"
filetype indent on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set copyindent
set smarttab

"Create the other brace"
inoremap { {<CR>}<Esc>ko
inoremap ( ()<left>
inoremap [ []<left>

"Command-line completion"
set wildmenu
set wildmode=list:longest
set completeopt=longest,menuone

"Better line wrapping"
set wrap
set textwidth=79
set formatoptions=qrn1

"History settings"
set history=1000
set undolevels=1000 

"Get rid of annoying bell sound"
set noerrorbells visualbell t_vb=
au GUIEnter * set visualbell t_vb=

"Statusline settings"
set laststatus=2
let g:Powerline_symbols = 'fancy'

"Easy window navigation"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
