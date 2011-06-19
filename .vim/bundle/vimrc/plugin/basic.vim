" 文字コード等
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932
set fileformat=unix
set fileformats=unix,dos,mac

syntax on

set number
set ts=4 sw=4 sts=0

" マウスモード有効
set mouse=a
" screen対応
set ttymouse=xterm2

" バックアップファイルを作らない
set nobackup

" ステータスライン
set cmdheight=1
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" タブを常に表示
set showtabline=2

" カーソル行をハイライト
set cursorline
