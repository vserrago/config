" Vimrc
" =====
"
" Valentin Serrago's vimrc

" Vundle Initialization
" =====================

set nocompatible    " Prevents Vim from emulating vi
filetype off        " Required for Vundle
set rtp+=~/.vim/bundle/Vundle.vim   " Set runtime path
call vundle#begin()                 " Initialize Vundle

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Colour Schemes
Plugin 'nanotech/jellybeans.vim'
Plugin 'trapd00r/neverland-vim-theme'
Plugin 'vim-scripts/Gummybears'

" Functional Plugins
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Vim Configuration
" =================

let mapleader = " "             " Use a more accessible key than \
set backspace=start,indent,eol  " make backspace work like 'normal' text editors

" --history
set history=1000    " history of commands and searches
set undolevels=1000 " changes to be remembered

" --interface appearance
set laststatus=2 " always show status line
set number       " show line numbers
set ruler        " always show current position
set showcmd      " show the command being typed
set showmode     " show current mode (insert, visual, etc.)
set title        " set title to filename and modification status
syntax enable    " enable syntax highlighting and allow custom highlighting

" --searching
set hlsearch   " highlight search terms
set ignorecase " ignore case when searching
set incsearch  " show matches as they are found
set smartcase  " case sensitive only when capital letter in expression

" --feedback
set matchtime=2 " length of time for 'showmatch'
set showmatch   " show matching braces when typed or under cursor

" --redrawing / warnings
set lazyredraw   " don't redraw screen when executing macros
set noerrorbells " no bell for error messages
set t_vb=        " set to nothing (disable)
set visualbell   " use whatever 't_vb' is set to as a bell

" --command-line completion
set wildmenu    " enhanced command-line completion

" --visual theme and appearance
colorscheme jellybeans

" force 256 colours (required for xterm and screen-bce $TERMs)
if &term == "xterm" || &term == "screen-bce"
    set t_Co=256
endif

" --movement / navigation
set scrolloff=5 " scrolling starts 5 lines before window border

" --mouse input
"set mouse=a " enable mouse support

" --filetype detection
filetype plugin indent on   " let vim detect filetype and load appropriate scripts

" --character encoding
set encoding=utf-8                             " encoding used within vim
set fileencodings=ucs-bom,utf-8,default,latin1 " encodings to try when editing a file

" --buffer management
set autoread  " update file when externally modified
set hidden    " allow buffer to be changed without writing to disk

" --indenting
set cindent                  " automatic indenting; see ':h C-indenting' for comparison
set expandtab                " use spaces instead of tab characters; to insert real tab, use <C-v><Tab>
set fileformats=unix,dos,mac " try recognizing line endings in this order
set shiftwidth=4             " number of spaces to use for autoindent
set softtabstop=4            " defines number of spaces for when adding/removing tabs
set tabstop=4                " width of a tab character in spaces

" --copying / pasting
" allow vim commands to copy to system clipboard (*)
" for X11:
"   + is the clipboard register (Ctrl-{c,v})
"   * is the selection register (middle click, Shift-Insert)

set clipboard=unnamed

" use clipboard register in linux when supported
if has("unix") && v:version >= 703
    set clipboard+=unnamedplus
endif


" Key Bindings
" ============

" Easier window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" set paste to prevent unexpected code formatting when pasting text
" toggle paste and show current value ('pastetoggle' doesn't)
nnoremap <Leader>p :set paste! paste?<CR>


" Sort lines
vnoremap <leader>s :sort<cr>
" Sort paragraph
nnoremap <leader>sp vip:sort<cr>

" Current word to uppercase
nnoremap <leader>u viwU

" Vimrc editing commands
nnoremap <leader>vrc :split $MYVIMRC<cr>
nnoremap <leader>vvrc :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
