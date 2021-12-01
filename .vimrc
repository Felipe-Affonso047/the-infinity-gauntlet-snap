" Created by: Felipe Garcia Affonso
" Created on: Nov 2021
" Baisc Vim configurations

" Basic configurations
set nocompatible        " don't try to be vi compatible
set number              " turn on line numbers
set ruler               " show line and column number of the cursor on right side of statusline
syntax on               " turn on syntax highlighting
colorscheme spacecamp
set tabstop=4 shiftwidth=4 expandtab
set colorcolumn=80
set encoding=utf-8
set showmatch
set scrolloff=5

" Commands
:command NERD NERDTreeToggle

call plug#begin('~/.vim/plugged')

  Plug 'jaredgorski/spacecamp'
  Plug 'preservim/nerdtree'

call plug#end()
