" c: visual 模式啟用滑鼠
" i: insert 模式啟用滑鼠
set mouse=ci

" 顯示行數
set number
set cursorline

" Highlight 所有搜尋
" `:noh` 可以關閉搜尋 highlight 直到下次搜尋
set hlsearch

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

" Ctrl+S 存檔
map <C-s> :w<CR>
imap <C-s> <ESC><C-s>a

" Ctrl+W 離開
map <C-w> :q<CR>
imap <C-w> <ESC><C-w>

" Ctrl+L 切換行數顯示
map <C-l> <ESC>:call ToggleLineNumber()<CR>
imap <C-l> <ESC><C-l>a
function ToggleLineNumber()
    if (&number == 0)
        set number
    else
        set nonumber
    endif
endfunction

