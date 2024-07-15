" Setup vim plug
call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'tpope/vim-commentary'
call plug#end()

" Set leader
let mapleader=" "

" Faster ESC
imap jk <ESC>
vmap jk <ESC>

" Faster move
nmap J 5j
nmap K 5k

" Faster save and quit
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>

" Split window
nmap <Leader>v :vsplit<CR>
nmap <Leader>s :split<CR>
nmap <Leader>j <C-w>j
nmap <Leader>k <C-w>k
nmap <Leader>h <C-w>h
nmap <Leader>l <C-w>l
nmap <Leader>J <C-w>J
nmap <Leader>K <C-w>K
nmap <Leader>H <C-w>H
nmap <Leader>L <C-w>L


" c: visual 模式啟用滑鼠
" i: insert 模式啟用滑鼠
 set mouse=ci

" 顯示行數
set number
set relativenumber
set cursorline

" Highlight 所有搜尋
" `:noh` 可以關閉搜尋 highlight 直到下次搜尋
set hlsearch

" // 關閉搜尋 highlight
nmap // :noh<CR>

" 邊輸入邊搜尋
set incsearch

" 語法 highlight 相關設定
syntax on
set t_Co=256
colorscheme codedark

" Tab 以 4 個空白取代
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 自動縮排
set cindent
set smarttab

" <Leader>n 切換行數顯示
nmap <Leader>n :call ToggleLineNumber()<CR>
function ToggleLineNumber()
    if (&number == 0)
        set number
        set relativenumber
    else
        set nonumber
        set norelativenumber
    endif
endfunction

" NERDTree
nmap <Leader>f :NERDTreeToggle<CR>

" Tagbar
nmap <Leader>t :TagbarToggle<CR>

" FZF
nmap <Leader>g :Files<CR>

" Commentary
nmap <Leader>/ gcc
vmap <Leader>/ gc

