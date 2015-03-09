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
set shiftwidth=4
set tabstop=4
set softtabstop=4
nnoremap <silent> t :NERDTreeToggle<CR>
