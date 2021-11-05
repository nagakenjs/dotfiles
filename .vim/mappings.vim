map <S-t> :tab
nmap <Tab> :tabn<CR>

" Escの2回押しでハイライト消去
nmap <ESC><ESC> ;nohlsearch<CR><ESC>

" .vimrc や .gvimrc をすぐに編集
nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>

" .vimrc や .gvimrc の変更を反映
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
nnoremap <silent> <Space>rg :<C-u>source $MYGVIMRC<CR>
