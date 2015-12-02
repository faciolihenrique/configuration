"  With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

"Visual
syntax enable 
colorscheme desert
set background=dark
set encoding=utf8
set ffs=unix,dos,mac


set number
set nocompatible
set so=7
set wildmenu
set ruler
set wildignore=*.o,*~,*.pyc
set cmdheight=2
set hid
set hlsearch
set incsearch 
set magic
set ignorecase
set smartcase
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=80
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
"set undofile
set laststatus=2
set mouse:a


nmap <leader>w :w!<cr>


vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


let asmsyntax='armasm'
let filetype_inc='armasm'

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
set history=700

filetype plugin on
filetype indent on
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'armasm'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " require


" END OF VUNDLE

