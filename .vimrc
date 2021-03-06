
" -------------------
" Usability
" -------------------

" ビープ音をなくす
set novisualbell
set vb t_vb=
" ファイルタイプを自動検出してタイプごとのプラグインとインデント設定を適用する
filetype plugin indent on
" エンコーディング設定
set encoding=UTF-8
set fileencoding=UFT-8
set termencoding=UTF-8
" swap ファイルを作らない
set noswapfile
" ターミナル接続を高速化
set ttyfast

" 256色対応
set t_Co=256
" 色つけを on にする
syntax on
" 背景色を正しく描画する
set t_ut=

" ターミナルの右端で文字を折り返さない
set nowrap
" スクロールする時に下が見えるようにする
set scrolloff=5
" 対応括弧を3秒間ハイライト表示する
set showmatch
set matchtime=3
" バックスペースで前行の末尾に行く
set backspace=indent,eol,start
" インクリメントサーチを有効化
set incsearch
" ハイライトサーチを無効化
set nohlsearch
" 大文字小文字を区別しない
set ignorecase
" が、大文字を含んでいた場合は区別する
set smartcase
" 補完の際に文字の大文字小文字を区別しない
set infercase
" 置換の時デフォルトで g オプションを有効にする
set gdefault

" タイトルをウィンドウ下に表示
set title
set undolevels=300
" コマンド・検索履歴
set history=10000
set viminfo='100,/50,%,<1000,f50,s100,:100,c,h,!
" ステータスラインを表示
set laststatus=2
" メッセージ表示欄の高さ
"set cmdheight=2
" カーソル位置が右下に表示される
set ruler
" 文字がない場所にもカーソルを移動できるようにする
set virtualedit=all
" 行番号を表示する
set number
" 不可視文字を表示
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" コマンドライン補完を強化
set wildmenu
set wildmode=list:longest
" コマンドを最下部に表示する
set showcmd
" クリップボードを共有する
set clipboard=unnamed

" オートインデント(改行時にインデントを引き継ぐ)を on にする
set autoindent
set smartindent

" 以下の Tab 関係の拡張オプションを使用する
set smarttab
" インデントに使われる空白の数
set shiftwidth=2
set softtabstop=2
" Tab 押下時に Tab でなく Space を挿入する
set expandtab
" Tab が対応する空白の数
set tabstop=2

" インクリメント、デクリメントを16進数にする
set nf=hex
" マウスを使用
"set mouse=a

" インサートモードのときに C-j でもノーマルモードに戻る
imap <C-j> <esc>
" 2回 esc を押したら検索のハイライトをやめる
nmap <esc><esc> :nohlsearch<CR><esc>


" -------------------
" for Python (vim)
" -------------------

" -------------------
" シンタックスハイライト
" -------------------
" fot Python
if version < 600
  syntax clear
elseif exists('b:current_after_syntax')
  finish
endif

" We need nocompatible mode in order to continue lines with backslashes.
" Original setting will be restored.
let s:cpo_save = &cpo
set cpo&vim

syn match pythonOperator "\(+\|=\|-\|\^\|\*\)"
syn match pythonDelimiter "\(,\|\.\|:\)"
syn keyword pythonSpecialWord self

hi link pythonSpecialWord    Special
hi link pythonDelimiter      Special

let b:current_after_syntax = 'python'

let &cpo = s:cpo_save
unlet s:cpo_save

" -------------------
" Matchit
" -------------------

" if や for などの文字にも%で移動できるようにする
source $VIMRUNTIME/macros/matchit.vim
let b:match_ignorecase = 1
