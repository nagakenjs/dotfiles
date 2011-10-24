" タブを常に表示
set showtabline=2
" ウィンドウサイズ
set lines=50
set columns=150

" コマンドラインの高さ調整
set cmdheight=1

set antialias

" OSごとの個別の処理
if has('win32') || has('win64')
	" Windows用
	set guifont=Consolas:h11:cSHIFTJIS
elseif has('gui_macvim')
	" Mac用

	" 透明度を指定
	set transparency=10

	colorscheme macvim
else
	" その他（UNIX/Linux用）
endif

" 制御文字の色設定（colorscheme を上書きするために最後に実施）
highlight SpecialKey guifg=darkgray

