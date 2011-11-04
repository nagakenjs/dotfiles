"neocomplcache settings

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

let g:neocomplcache_enable_at_startup = 1

" 大文字小文字を区別する
let g:neocomplcache_enable_smart_case = 1

" キャメルケース補完を有効にする
let g:neocomplcache_enable_camel_case_completion = 1

" アンダーバー補完を有効にする
let g:neocomplcache_enable_underbar_completion = 1

" シンタックスファイルの補完対象キーワードとする最小の長さ
let g:neocomplcache_min_syntax_length = 3

" 辞書
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'cpp' : $HOME . '/.vim/dict/cpp.dict',
  \ 'c' : $HOME . '/.vim/dict/c.dict',
  \ 'javascript' : $HOME . '/.vim/dict/javascript.dict',
  \ 'scala' : $HOME . '/.vim/dict/scala.dict',
  \ 'java' : $HOME . '/.vim/dict/java.dict'
  \ }

" コードスニペット
let g:neocomplcache_snippets_dir = $HOME . '/.vim/snippets'
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)

" Omni completion
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
	let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
