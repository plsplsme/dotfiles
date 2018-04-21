set fenc=utf-8

set autoread

set hidden

set showcmd

"looking
"
set number
set cursorline
set smartindent
set showmatch
set laststatus=2

set expandtab
set tabstop=2
set shiftwidth=2


"search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> : nohlsearch<CR><Esc>

if &compatible
 set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable
