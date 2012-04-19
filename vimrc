" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on syntax highlighting
syntax on

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu. See :help 'wildmenu'
set wildmenu

" Let's make it easy to edit this file
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well
nmap <silent> ,sv :so $MYVIMRC<cr>

" Set the search scan to wrap around the file
set wrapscan

" Make command line two lines high
set ch=2

" Turn of visual bell
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Always put in a status line
set laststatus=2

" Hide the mouse pointer while typing
set mousehide

" turn of extra gui elements
set guioptions=ac

" Keep the cursor 8 lines from the top and from the bottom
set scrolloff=8

" Turn on incremental search
set incsearch

" set colors to solarized
set background=dark
colorscheme solarized

" turn on line numbers
set number

" turn on current line and column highlighting
set cursorline
set cursorcolumn

set shiftwidth=2
set tabstop=2
set expandtab
set softtabstop=2

" Highlight column 80 to help with keeping single lines short
set textwidth=80
set colorcolumn=+1

" Automatically remove trailing spaces when saving
autocmd BufWritePre * :%s/\s\+$//e
" Replace leading tabs with spaces
autocmd BufWritePre * :%s/\t\t/    /e
autocmd BufWritePre * :%s/\t/  /e

" move swap files to a single directory
set directory=~/temp//
