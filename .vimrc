
" -------------------
" Usability
" -------------------

" ビープ音をなくす
set visualbell t_vb=
" ファイルタイプを自動検出してタイプごとのプラグインとインデント設定を適用する
filetype plugin indent on

" 256色対応
set t_Co=256
" 色つけを on にする
syntax on
" 背景色を正しく描画する
set t_ut=

" ターミナルの右端で文字を折り返さない
set nowrap

" ハイライトサーチを有効化
set hlsearch
" 大文字小文字を区別しない
set ignorecase
" が、大文字を含んでいた場合は区別する
set smartcase

" カーソル位置が右下に表示される
set ruler
" 行番号を表示する
set number
" タブ文字が I^ で表示される
set list
" コマンドライン補完を強化
set wildmenu
" コマンドを最下部に表示する
set showcmd
" クリップボードを共有する
set clipboard=unnamed

" オートインデント(改行時にインデントを引き継ぐ)を on にする
set autoindent

" 以下の Tab 関係の拡張オプションを使用する
set smarttab
" インデントに使われる空白の数
set shiftwidth=2
" Tab 押下時の空白数
set softtabstop=2
" Tab 押下時に Tab でなく Space を挿入する
set expandtab
" Tab が対応する空白の数
set tabstop=2

" インクリメント、デクリメントを16進数にする
set nf=hex
" マウスを使用
set mouse=a

" インサートモードのときに C-j でもノーマルモードに戻る
imap <C-j> <esc>
" 括弧を入力した時に自動的にカーソルが括弧の中に進む
imap [ []<left>
imap ( ()<left>
imap { {}<left>
" 2回 esc を押したら検索のハイライトをやめる
nmap <esc><esc> :nohlsearch<CR><esc>


" -------------------
" Matchit
" -------------------

" if や for などの文字にも%で移動できるようにする
source $VIMRUNTIME/macros/matchit.vim
let b:match_ignorecase = 1


" -------------------
" Vim-plug(https://github.com/junegunn/vim-plug)
" -------------------

" 以下、導入するプラグインを記述
call plug#begin('~/.vim/plugged')

" tender.vim のカラースキーマ
Plug 'jacoborus/tender.vim'

call plug#end()


" -------------------
" Tender.vim
" -------------------

if (has("termguicolors"))
  set termguicolors
endif

" Tender.vim のカラースキーマを設定
colorscheme tender
