"Setup Vundle - it's awesome!"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"General enhancements"
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim.git'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-bufferline'
Bundle 'bling/vim-airline'

"Colorschemes"
Bundle 'altercation/vim-colors-solarized.git'

"Bundle settings"
set runtimepath^=~/.vim/bundle/ctrlp.vim

"NERDTree settings"
let NERDTreeIgnore = ['\.pyc$', '\~$', '\.rbc$', '\.class$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

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

"solarized options
set background=dark
set t_Co=16
silent! colorscheme solarized
filetype plugin indent on
set guitablabel=\[%N\]\ %t\ %M "tabs
set guifont=Inconsolata:h13

"Search settings"
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

"Indentation settings"
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set copyindent
set smartindent
set smarttab

"Command-line completion"
set wildmenu
set wildmode=list:longest
set completeopt=longest,menuone

"Better line wrapping"
set wrap
set textwidth=79
set formatoptions=qrn1

"History settings"
set history=500
set undolevels=1000 

"Get rid of annoying bell sound"
set noerrorbells visualbell t_vb=
au GUIEnter * set visualbell t_vb=

"Statusline settings"
set laststatus=2
let g:Powerline_symbols = 'fancy'

"Use the damn hjkl keys"
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"Easy window navigation"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
