"Basic settings"
set nocompatible
syntax on
call pathogen#infect()
call pathogen#helptags()
set backspace=indent,eol,start
set wildignore=*.swp,*.bak,*.pyc,*.class
set virtualedit=onemore
set number
set mouse=a
set shortmess=I
set showmatch
set pastetoggle=<F2>
set t_Co=256
colorscheme mustang
filetype plugin indent on
set guitablabel=\[%N\]\ %t\ %M "tabs

"Search settings"
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

"Indentation settings"
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
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

"Convenience mappings"
nnoremap ; :
inoremap <Nul> <C-x><C-o>
au FileType python map <F5> :!clear && python %<CR>

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

"LaTeX Settings"
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_UseMakefile=0

"NERDTree settings"
let NERDTreeIgnore = ['\.pyc$', '\~$', '\.rbc$', '\.class$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

"Autocomplete"
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete 
