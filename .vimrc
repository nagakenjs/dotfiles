" {{{ load config files ------------------------------------------------------
let $VIMPATH = expand('~/.vim/vimrc')
source $VIMPATH/basic.vim
source $VIMPATH/mappings.vim

if has('gui_macvim')
	source $VIMPATH/mac.vim
endif
" }}} load config files ------------------------------------------------------
