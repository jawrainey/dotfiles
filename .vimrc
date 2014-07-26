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
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'klen/python-mode'

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
set cursorline
set autochdir

" Theme settings"
set t_Co=16
colorscheme solarized

"GUI (MacVim) specific settings"
if has('gui_running')
  set background=light
  set gcr=n:blinkon0 "Stop the cursor blinking!
  set guitablabel=\[%N\]\ %t\ %M
  set guifont=Inconsolata:h14
  set linespace=5
else
  set background=dark
endif

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
inoremap { {}<left>
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

"Spell checking
set spelllang=en_gb
set spell

"Easy window navigation"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Automagically remove trailing white spaces
autocmd BufWritePre * :%s/\s\+$//e

"Use standard 4 spaces in Python
autocmd FileType python setlocal shiftwidth=4 tabstop=4
" netrw settings."
let g:netrw_banner=0    " Remove help message
let g:netrw_liststyle=3 " Enable tree view

" Better navigation of buffers
" Jump to a buffer by entering its name or number
map gp :ls<cr>:b<space>
" Delete the current buffer
map gd :bd<cr>
