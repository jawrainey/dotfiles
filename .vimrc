set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" PLUGINS
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim.git'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-bufferline'
Bundle 'bling/vim-airline'
Bundle 'klen/python-mode'
Bundle 'vim-gitgutter'
Bundle 'Raimondi/delimitMate'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'elzr/vim-json'
Bundle 'altercation/vim-colors-solarized.git'

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

" THEMING
set t_Co=256                                    " Enable 256 colours in the terminal
colorscheme solarized                           " Is there a more refined theme?
set background=light                            " I have seen the light...

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

" GUI
if has('gui_running')
  set guioptions-=rL                            " Remove the scrollbar
  set guifont=Inconsolata:h14                   " A beautiful monospace font
  set guicursor=n:blinkon0                      " Stop the cursor blinking!
  set linespace=5                               " Improve the line-height spacing
endif

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
fu! CtrlP_main_status(...)
  " Reduce the options on the default CtrlP status bar to match AirLine, i.e.
  " » TYPE_OF_SEARCH «                                        VIM_PROJECT_DIR
  retu '» ' . a:5. ' «' . '%=%<  ' . '%4*%*' . fnamemodify(getcwd(), ':~') . '%4*%*' . ' '
endf

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
  let g:airline_section_x=g:pymode_virtualenv_path != '' ? split(g:pymode_virtualenv_path, '/')[-1] : ''
  let g:airline_section_y='%c'
  let g:airline_section_z=airline#section#create(['branch'])
  " Required as AirLine overrides them on initialisation
  let g:ctrlp_status_func={ 'main': 'CtrlP_main_status' }
endfunction

let delimitMate_expand_cr=1                             " Expand the brackets and add a new line on ENTER
let g:ctrlp_show_hidden=1                               " Include hidden files in the search
let g:ctrlp_working_path_mode=0                         " Search from current directory instead of project root
let g:ctrlp_match_window='min:1,max:5'                  " The height that the window can size to based on results

" AUTO COMMANDS
autocmd Vimenter * call AirLineInit()                   " Load the defined AirLine settings above
autocmd BufWritePre * :%s/\s\+$//e                      " Automatically remove trailing white spaces on save
autocmd FileType python setlocal shiftwidth=4 tabstop=4 " Use four spaces for tabs in Python
