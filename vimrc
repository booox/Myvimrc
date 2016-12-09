""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"       -> Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible			  " be iMproved,required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
" Code complete
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Keep my own coding style
Plugin 'mudongliang/vim-snippets'

" NERD tree
Plugin 'scrooloose/nerdtree'

" Plugin to manage Most Recently Used (MRU) files
Plugin 'mru.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
