"------------------------------------------------------------------------------
" 基本設定
"------------------------------------------------------------------------------
set noswapfile      " スワップファイルを作らない
set nobackup        " バックアップファイルを作成しない
set noundofile      " undoファイルを作成しない
set nocompatible    " vi 互換モードをオフ（vim の拡張機能を有効に）
set hidden          " 編集中でも、保存しないで他のファイルを開けるようにする
set confirm         " ファイルを保存していない場合に、ファイルの保存を確認するダイアログを出す
set cmdheight=1     " 画面下部のコマンドラインの高さ
set showcmd         " 入力したコマンドをステータスラインに表示
set scrolloff=5     " カーソルの上または下に表示される最小限の行数。5に設定してあるので、下に5行は必ず表示される
set visualbell      " ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set vb t_vb=        " ビープを鳴らさない
set mouse=a         " 全モードでマウスを有効化
set shellslash      " パス区切りをスラッシュにする
set backspace=indent,eol,start  " BS でなんでも消せるようにする
"set clipboard+=autoselect       " クリップボードを使用
" set ambiwidth=double            " □とか○の文字があってもカーソル位置がずれないようにする
set nowrap          " 折り返さない
set formatoptions=q " 自動改行をオフにする
set iminsert=0    " insertモード開始時にIMEをONにしない
set imsearch=-1   " search開始時のIMEの状態をiminsertと同じ値に設定
set tags=./tags;  " 現在のファイルからさかのぼってtagsファイルを探す
set showtabline=2 " タブを常に表示
set signcolumn=yes
set maxmempattern=5120

filetype indent on  " ファイルタイプによるインデントを行う
filetype plugin on  " ファイルタイプによるプラグインを使う

"--------------------------------------------------------
" 補完
"--------------------------------------------------------
set wildmenu        " コマンドラインモードでの補完を有効に
set wildchar=<tab>  " コマンド補完を開始するキー
set history=1000    " コマンド・検索パターンの履歴数
set wildmode=list:longest,full
set completeopt=menu,preview,menuone

" wildmodeのオプション色々
" [none]       最初のマッチのみを補完する。
" full         次のマッチを完全に補完する。最後のマッチの次には元の文字列が使われ、その次は再び最初のマッチが補完される
" longest      共通する最長の文字列までが補完される。それ以上長い文字列を補完できないときは、次の候補に移る
" longest:full longestと似ているが、'wildmenu' " が有効ならばそれを開始する
" list"        複数のマッチがあるときは、全てのマッチを羅列する。
" list:full    複数のマッチがあるときは、全てのマッチを羅列し、最初のマッチを補完する
" list:longest 複数のマッチがあるときは、全てのマッチを羅列し、共通する最長の文字列までが補完される

"--------------------------------------------------------
" ファイルタイプ
"--------------------------------------------------------
au BufRead,BufNewFile,BufReadPre *.coffee set filetype=coffee
au BufRead,BufNewFile,BufReadPre *.scss set filetype=scss

"--------------------------------------------------------
" インデント
"--------------------------------------------------------
"set autoindent      " オートインデント
set smartindent     " スマートインデント
set expandtab
" set noexpandtab
set tabstop=2       " タブ幅
set shiftwidth=2    " インデントの幅
set softtabstop=2   " Tab キー押下時に挿入される空白の量
" au FileType ruby setlocal ts=2 sw=2 softtabstop=2 expandtab
" au FileType sql setlocal ts=2 sw=2 softtabstop=2 expandtab
" au FileType html setlocal ts=2 sw=2 softtabstop=2 expandtab
" au FileType eruby setlocal ts=2 sw=2 softtabstop=2 expandtab
au FileType python setlocal ts=4 sw=4 softtabstop=4 expandtab
" au FileType vue setlocal ts=2 sw=2 softtabstop=2 expandtab
" au FileType javascript setlocal ts=2 sw=2 softtabstop=2 expandtab
" au FileType vim setlocal ts=2 sw=2 softtabstop=2 expandtab
" au FileType less setlocal ts=2 sw=2 softtabstop=2 expandtab
" au FileType css setlocal ts=2 sw=2 softtabstop=2 expandtab
" au FileType jade setlocal ts=2 sw=2 softtabstop=2 expandtab
" au FileType pug setlocal ts=2 sw=2 softtabstop=2 expandtab
" au FileType xhtml setlocal ts=2 sw=2 softtabstop= expandtab
" au FileType jsp setlocal ts=2 sw=2 softtabstop=0 expandtab
" au FileType php setlocal ts=4 sw=4 softtabstop=0 expandtab

"--------------------------------------------------------
" 表示
"--------------------------------------------------------
set number      " 行番号を表示
set showmatch   " 括弧の対応をハイライト
" set cursorline  " カーソル行のハイライト
" set cursorcolumn " カーソル列のハイライト
set title       " ウィンドウのタイトルを書き換える
set showmode        "現在のモードを表示
" 特殊文字(SpecialKey)の見える化
set list
set listchars=tab:\|\ \,trail:_,nbsp:%,extends:$,precedes:$,eol:$

"--------------------------------------------------------
" ステータスライン
"--------------------------------------------------------
set laststatus=2    " ステータスラインを常に表示する
set ruler           " ステータスライン上にルーラーを表示する（カーソルが何行目の何列目に置かれているか）

" [ファイルフォーマット][エンコーディング][改行タイプ] 行数, 列数／総列数
set statusline=%F%m%r%h%w\%=[FILETYPE=%Y][ENC=%{&fenc}][%{&ff}]%=%c,\%l/%L

"--------------------------------------------------------
" 検索
"--------------------------------------------------------
set wrapscan    " 最後まで検索したら先頭に戻る
set ignorecase  " 大文字小文字を無視する
set smartcase   " 検索文字列に大文字が含まれている場合は区別して検索する
set hlsearch    " 検索語を強調表示
set incsearch   " インクリメンタルサーチを有効化
set grepprg=internal    " 内蔵grepを使う

" Esc の 2 回押しでハイライトを消去
nnoremap <Esc><Esc> :sign unplace *<CR>:nohlsearch<CR><ESC>

"--------------------------------------------------------
" エンコーディング
"--------------------------------------------------------
set encoding=utf-8     " デフォルトエンコーディング
set fileencodings=utf-8,cp932,euc-jp,utf-32,iso-2022-jp
set fileformats=unix,dos,mac   " 改行文字

"--------------------------------------------------------
" 折り畳み
"--------------------------------------------------------
"set foldmethod=syntax    "自動で折り畳み
"set foldmethod=marker    "マーカーで折り畳み
"set foldmethod=indent
"set foldmethod=expr
"set foldmethod=manual
"set foldmethod=diff

"--------------------------------------------------------
" diff関係
"--------------------------------------------------------
function! SetDiffMode()
  if &diff
    setlocal nospell
    setlocal wrap<
  endif
endfunction
autocmd VimEnter,FilterWritePre * call SetDiffMode()

set splitright
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif

"--------------------------------------------------------
" カレントバッファのファイルがあるディレクトリにcdする
"--------------------------------------------------------
function! CdToCurrentBufDir()
  try
    cd %:p:h
    pwd
  catch
    " 握りつぶす
  endtry
endfunction
command! Cd call CdToCurrentBufDir()

"--------------------------------------------------------
" カレントバッファのファイルのフルパスを表示
"--------------------------------------------------------
function! EchoCurrentPath()
  let path = execute(':echo expand("%:p")')
  execute(':normal i' . path)
endfunction
command! EchoCurrentPath call EchoCurrentPath()
command! CurrentPath execute(':echo expand("%:p")')

"--------------------------------------------------------
" ファイル保存時に末尾の余計なスペースを削除
"--------------------------------------------------------
" autocmd BufWritePre * :%s/\s\+$//ge

"--------------------------------------------------------
" <% をいれられたら %> を補完
"--------------------------------------------------------
inoremap <expr> % ErbTagComp()
function! ErbTagComp()
  if getline('.')[col('.') - 2] == "<"
    return "\% \%\>\<Left>\<Left>\<Left>"
  else
    return "\%"
  end
endf

"--------------------------------------------------------
" クリップボードにコピー
"--------------------------------------------------------
" 選択部分
vnoremap <C-c><C-c> "+y
" 1文字
nnoremap <C-c><C-c> v"+y
" 単語
nnoremap <C-c><C-i><C-y> viw"+y

"--------------------------------------------------------
" リロード
"--------------------------------------------------------
command! Reload execute(":e!")

"--------------------------------------------------------
" タブ操作
"--------------------------------------------------------
" 新規タブ
nnoremap <C-k><C-k><C-t> :<C-u>tabnew<CR>
" nnoremap <C-k><C-k><C-d> :<C-u>tabnew<CR>
" nnoremap <C-k><C-k><C-l> :<C-u>tabnext<CR>
nnoremap <C-k><C-k><C-n> :<C-u>tabnext<CR>
" nnoremap <C-k><C-k><C-h> :<C-u>tabprev<CR>
nnoremap <C-k><C-k><C-p> :<C-u>tabprev<CR>

"--------------------------------------------------------
" 整形
"--------------------------------------------------------
function! Format_file()
  let view = winsaveview()
  normal gg=G
  silent call winrestview(view)
endfunction
nnoremap <C-k><C-f> :call Format_file()<CR>

