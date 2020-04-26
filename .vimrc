set nocompatible 
filetype off

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'lervag/vimtex'
Plug 'vim-scripts/delimitMate.vim'
Plug 'scrooloose/nerdtree'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set backspace=indent,eol,start
set ruler
set number relativenumber
set showcmd
set incsearch
set hlsearch
set noshowmode
set tabstop=4
set softtabstop=2
set expandtab
set cursorline
set timeoutlen=1000 ttimeoutlen=0
set path+=**
filetype plugin indent on
set showmatch

nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
syntax enable

" Tex lstlisting syntax fixer
au filetype tex syntax region texZone start='\\begin{lstlisting}' end='\\end{lstlisting}'
