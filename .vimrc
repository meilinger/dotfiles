set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" " required! 
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
filetype plugin indent on

set number
set expandtab
set list
set shiftwidth=2
set tabstop=2
set softtabstop=2
nnoremap <silent> t :NERDTreeToggle<CR>
