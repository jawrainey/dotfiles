call plug#begin()

" PLUGINS
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" GENERAL SETTINGS
syntax on                                       " Enable syntax highlighting
let mapleader=","                               " Change default mapleader from \ to ,
set autoread                                    " Automatically reads file if changes outside of vim
set autochdir                                   " Switch working dir when a different file/buffer opened
set cursorline                                  " Highlight the line the cursor is on
set hidden                                      " Show hidden buffers
set relativenumber                              " Better navigation with j/k
set shortmess=tIAa                              " Abbreviate prompt messages, i.e. 'written' becomes 'w'
set splitbelow                                  " Opens split window below
set splitright                                  " Virtual split opens window to the right
set textwidth=79                                " Maximum width of text to be inserted
set history=1000                                " Keep a very long history!
set visualbell t_vb=                            " Get rid of annoying bell sound
set laststatus=2                                " Always show a status line
set completeopt=menuone,longest                 " Improve completion in insert mode via popup menu

" SEARCHING
set hlsearch                                    " Highlight searches [use :noh to clear]
set incsearch                                   " Highlight dynamically as pattern is typed
set ignorecase                                  " Ignore case when searching

" INDENTATION
filetype indent on                              " Enable filetype indentation detection
set tabstop=2                                   " The number of spaces a tab in a file counts for
set shiftwidth=2                                " The number of spaces to use to auto-indent (<<, >>)
set softtabstop=2                               " The number of spaces a tab counts for when
set expandtab                                   " Use spaces instead of tabs when inserting
set copyindent                                  " When auto-indenting copy the structure of existing lines

" COMMAND LINE OPTIONS
set wildmenu                                    " Show a list of possible completions
set wildmode=list:longest                       " Tab autocomplete longest possible part of a string, then list
set wildignore+=*.swp,*.pyc,*.class,*venv/*     " Ignore these files when autocompleting
set wildignore+=.DS_Store,.git,*~,*.sw?,*.rope* " Also ignore these...

" SPELL CHECKING
set spell                                       " Enable spell check by default - useful when writing comments.
set spelllang=en_gb                             " Use British spelling
set complete+=kspell                            " Use the currently active spell checking

" NETRW
let g:netrw_banner=0                            " Remove help message
let g:netrw_liststyle=3                         " Enable tree view
let g:netrw_list_hide='^\..*,\.pyc$,\.swp$'     " Ignore specific files

" MAPPINGS
" Better navigation of buffers
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Go to a specific buffer
map gp :ls<cr>:b<space>
" Delete a specific buffer
map gd :ls<cr>:bd<space>

" PLUGINS
function! AirLineInit()
  " Remove default symbols (>) in favour of » below
  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline_symbols.branch='⎇ '
  " Remove unnecessary sections from vim-airline
  let g:airline_section_a='» %f «'
  let g:airline_section_b=''
  let g:airline_section_c=''
  " Show the name of the virtual environment if it exists.
  let g:airline_section_x=''
  let g:airline_section_y='%c'
  let g:airline_section_z=airline#section#create(['branch'])
endfunction

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" AUTO COMMANDS
autocmd Vimenter * call AirLineInit()                   " Load the defined AirLine settings above
autocmd BufWritePre * :%s/\s\+$//e                      " Automatically remove trailing white spaces on save
autocmd FileType python setlocal shiftwidth=4 tabstop=4 " Use four spaces for tabs in Python

" THEMING
let g:solarized_termcolors=256                          " Manually force terminal support (OSX) for solarized
silent! colorscheme solarized                           " Is there a more refined theme?
