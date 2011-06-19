set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932

syntax on

set number
set ts=4 sw=4 sts=0
set cmdheight=1

" マウスモード有効
set mouse=a
" screen対応
set ttymouse=xterm2

set nobackup

set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

set showtabline=2
nmap <S-t> :tab
nmap <Tab> :tabn<CR>

" カーソル行をハイライト
set cursorline

"Escの2回押しでハイライト消去
nmap <ESC><ESC> ;nohlsearch<CR><ESC>

" プラグインの管理にpathogenを使用
call pathogen#runtime_append_all_bundles()

