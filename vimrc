" Vimrc
" =====
"
" Valentin Serrago's vimrc

" Automatically install plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
" =======
call plug#begin('~/.vim/bundle')

" Sensible Defaults
Plug 'tpope/vim-sensible'

" Colour Schemes
Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'trapd00r/neverland-vim-theme'
Plug 'MaxSt/FlatColor'
Plug 'vim-scripts/Gummybears'

" Functional Plugins
Plug 'elzr/vim-json'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-surround'

call plug#end()


" Vim Configuration
" =================

let mapleader = " "             " Use a more accessible key than \

" History
set history=1000    " history of commands and searches
set undolevels=1000 " changes to be remembered

" Interface appearance
set number       " show line numbers
set showcmd      " show the command being typed
set showmode     " show current mode (insert, visual, etc.)
set title        " set title to filename and modification status

" Searching
set hlsearch   " highlight search terms
set ignorecase " ignore case when searching
set smartcase  " case sensitive only when capital letter in expression

" Feedback
set matchtime=2 " length of time for 'showmatch'
set showmatch   " show matching braces when typed or under cursor
set cursorline  " Highlight the line that the cursor is on

" Redrawing / warnings
set lazyredraw   " don't redraw screen when executing macros
set noerrorbells " no bell for error messages
set t_vb=        " set to nothing (disable)
set visualbell   " use whatever 't_vb' is set to as a bell

if has("gui_running")
    set guifont=Consolas    "Use a font that works with italics
endif

" Visual theme and appearance
colorscheme jellybeans

" Force 256 colours (required for xterm and screen-bce $TERMs)
if &term == "xterm" || &term == "screen-bce"
    set t_Co=256
endif

" Movement / navigation
set scrolloff=5 " scrolling starts 5 lines before window border

" Mouse input
" set mouse=a " enable mouse support

" Character encoding
set encoding=utf-8                             " encoding used within vim
set fileencodings=ucs-bom,utf-8,default,latin1 " encodings to try when editing a file

" Buffer management
set hidden              " allow buffer to be changed without writing to disk
set switchbuf=usetab,newtab    " Set buffers in new instances to open in tabs

" Store backup files in a central location
if !isdirectory($HOME . "/.vim/backup")
    call mkdir($HOME . "/.vim/backup", "p")
endif
set backupdir=~/.vim/backup
if !isdirectory($HOME . "/.vim/swap")
    call mkdir($HOME . "/.vim/swap", "p")
endif
set directory=~/.vim/swap

" Indenting
set cindent                  " automatic indenting; see ':h C-indenting' for comparison
set expandtab                " use spaces instead of tab characters; to insert real tab, use <C-v><Tab>
set fileformats=unix,dos,mac " try recognizing line endings in this order
set shiftwidth=2             " number of spaces to use for autoindent
set softtabstop=2            " defines number of spaces for when adding/removing tabs
set tabstop=2                " width of a tab character in spaces
set list                     " Show tabs and things
set listchars=tab:>-,eol:$   " Display tabs as ">-", ">---", etc, and Eol as $


" Line wrapping
set nowrap

" Window spawning
set splitbelow
set splitright

" Copying / pasting
" Allow vim commands to copy to system clipboard (*)
" for X11:
"   + is the clipboard register (Ctrl-{c,v})
"   * is the selection register (middle click, Shift-Insert)

set clipboard=unnamed

" Use clipboard register in linux when supported
if has("unix") && v:version >= 703
    set clipboard+=unnamedplus
endif

set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows


" Auto Commands
" =============
if has("autocmd")
    " Force html files to use xml highlighting
    augroup HtmlFileSyntax
        autocmd!
        autocmd BufRead,BufNewFile *.html set filetype=xml
    augroup end

    " Source the vimrc file after saving it
    augroup SourceVimrcOnSave
        autocmd!
        autocmd! BufWritePost $MYVIMRC source $MYVIMRC
    augroup end

    " Restore 't_vb' since it is reset after the GUI starts
    if has("gui_running")
        augroup DisableGuiVisualBell
            autocmd!
            autocmd GUIEnter * set t_vb=
        augroup end
    endif
endif

" Plugin Config
" =============

" Vim-Json
let g:vim_json_syntax_conceal = 0

" Easy-Align
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Key Bindings
" ============

" Escape

" Line Navigation
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Hardcore mode activated
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Buffer Navigation
noremap <leader>b :ls<cr>:buffer<Space>

" Easier window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Tab navigation
nnoremap <tab> :tabnext<cr>
nnoremap <S-tab> :tabprev<cr>
nnoremap <C-tab> :tabnew<cr>

" Set paste to prevent unexpected code formatting when pasting text
" Toggle paste and show current value ('pastetoggle' doesn't)
nnoremap <Leader>p :set paste! paste?<CR>

" Make Y consistent with other commands (D, C, etc)
nnoremap Y y$

" Q repeats last macro
nnoremap Q @@

" Have K mimic J
nnoremap K kJ

" Insert newline below
nnoremap <Leader>o o<esc>
" Insert newline above cursor
nnoremap <Leader>O O<esc>

" Toggle tab insertion
nnoremap <leader><tab> :set expandtab! expandtab?<cr>

" Trim
nnoremap <leader>tr :%s/\s\+$//g<cr>

" Netrw
nnoremap <leader>e :Explore<cr>

" Sort lines
vnoremap <leader>s :sort<cr>
" Sort paragraph
nnoremap <leader>sp vip:sort<cr>

" Current word to uppercase
nnoremap <leader>uw viwU

" Format entire buffer
nnoremap <leader>= gg=G``

" Yank entire buffer
nnoremap <leader>ya ggVGy``

" Toggle wrap
nnoremap <leader>w :set wrap! wrap?<cr>

" Vimrc editing commands
nnoremap <leader>vrc :e $MYVIMRC<cr>

