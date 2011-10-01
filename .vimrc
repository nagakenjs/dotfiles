" {{{ Vundle ------------------------------------------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'scala.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'

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
