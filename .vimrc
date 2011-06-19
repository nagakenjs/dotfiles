" 基本的な設定はこちら
" .vim/bundle/vimrc/plugin/basic.vim
"
" GUI関連はこちら
" .vim/bundle/vimrc/plugin/gui.vim
"
" マッピングに関するものはこちら
" .vim/bundle/vimrc/plugin/mappings.vim
"
" プラグインとそのマッピングについてはこちら
" .vim/bundle/vimrc/plugin/plugins.vim
"
" 独自関数や便利関数はこちら
" .vim/bundle/vimrc/plugin/utils.vim

" プラグインの管理にpathogenを使用
" pathogenでftdetectなどをloadさせるために一度ファイルタイプ判定をoff
filetype off
" pathogen.vimによってbundle配下のpluginをpathに加える
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set helpfile=$VIMRUNTIME/doc/help.txt
" ファイルタイプ判定をon
filetype plugin on
