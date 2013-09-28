
" Overall settings of settificationness ---------------------- {{{

" Do not worry about vi compatibility
set nocompatible

" Use 256 colors; we have them
set t_Co=256

" Set the colorscheme
colorscheme everywhere

" Set general leader ,
let mapleader=","

" Local leader: \
let maplocalleader="\\"

" Characters we use for window (etc.) separators
set fillchars=stl:-,stlnc:-,vert:│

" Turn on syntax highlighting
syntax on

" What we remember when we save a session
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos

" Don't make backup files
set nobackup

" Don't even make backup files just for while we're editing
set nowritebackup

" Don't use swap files
set noswapfile

" When we enter `%%`, expand that to the current file's full path
cabbr <expr> %% expand('%:p:h')

" Show incomplete commands as we're typing them
set showcmd

" Remember the last 50 commands we used
set history=50

" Jump to first search result
set incsearch		

" Highlight the last search
set hlsearch

" Highlight search results even when we're on the same line
" (Note: This is specific to our color scheme, and probably
" should be part of it.)
hi Search term=none cterm=none ctermbg=199 ctermfg=125 
hi IncSearch term=none cterm=none ctermbg=199 ctermfg=125 

" Only wrap lines at characters in `breakat`
set linebreak

" Where are we in the file? Show us in the status line.
set ruler

" Highlight the line the cursor's on
set cursorline

" Set the highlight colors for that line
" (Note: This is also specific to our color scheme, and
" probably should be part of it.)
hi CursorLine term=none cterm=none ctermbg=125 ctermfg=169
hi Visual term=none cterm=none ctermbg=125 ctermfg=169

" Tabs are two spaces; indent by two spaces
set tabstop=2 shiftwidth=2

" Convert all new tabs to spaces
set expandtab

" Do we have a mouse? We can use a mouse.
if has('mouse')
  set mouse=a
endif

" }}}

" File settings ---------------------- {{{

" Recognize file types; indent stuff
filetype plugin indent on

" Set up an autocommand group
augroup yo_settings
" Clear the group
autocmd!

" Try to have the cursor where we last had it in this file
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   execute "normal! g`\"" |
  \ endif

" End the group
augroup END

" If we're in a Vimscript file...
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

" Re-mappings ---------------------- {{{

" Use jk as escape sequence so we can avoid the distant <Esc> key
inoremap jk <Esc>

" In visual mode, use Y to copy to system clipboard
vnoremap Y "*y

" Also do that in normal mode
nnoremap Y "*yy

" Switch colon and semicolon for faster commanding
nnoremap ; :
nnoremap : ;

" <leader>ev opens this file in a new vsplit to the right
nnoremap <leader>ev :vs<cr><c-w>l:e$MYVIMRC<cr>

" <leader>sv sources this file
nnoremap <leader>sv :so $MYVIMRC<cr>

" If we use any of the arrow keys in insert mode, ignore it
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <right> <nop>
inoremap <left> <nop>

" }}}

" Stuff that comes last ---------------------- {{{

" Use Pathogen
call pathogen#infect()

" }}}

