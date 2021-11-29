" Created by: Mr Coxall                                                         
" Created on: Sep 2020                                                          
" Baisc Vim configurations                                                      
                                                                                
" Basic configurations                                                          
set nocompatible        " don't try to be vi compatible                         
set number              " turn on line numbers                                  
set ruler               " show line and column number of the cursor on right side of statusline
syntax on               " turn on syntax highlighting
colorscheme spacecamp
set tabstop=2 shiftwidth=2 expandtab

call plug#begin('~/.vim/plugged')

  Plug 'jaredgorski/spacecamp'
  Plug 'preservim/nerdtree'

call plug#end()
