if has('gui_macvim')
	" タブを常に表示
	set showtabline=2
	" ウィンドウサイズ
	set lines=50
	set columns=150

	" コマンドラインの高さ調整
	set cmdheight=1

	" 透明度を指定
	set transparency=10

	set antialias

	colorscheme macvim

	" 制御文字の色設定
	highlight SpecialKey guifg=darkgray
endif
