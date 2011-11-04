" {{{ Vundle ------------------------------------------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'Shougo/neocomplcache'
"Bundle 'Shougo/unite.vim'

Bundle 'muhlig/vim-scala'

filetype plugin indent on
" }}} Vundle ------------------------------------------------------

" {{{ load config files ------------------------------------------------------
let $VIMPATH = expand('~/.vim/vimrc')
source $VIMPATH/basic.vim
source $VIMPATH/mappings.vim
source $VIMPATH/neocomplcache.vim

if has('gui_macvim')
	source $VIMPATH/mac.vim
endif
" }}} load config files ------------------------------------------------------
