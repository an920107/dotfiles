vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("n", "J", "5j")
vim.keymap.set("n", "K", "5k")
vim.keymap.set("n", "//", ":noh<CR>")
vim.keymap.set("n", "<Leader>w", ":w<CR>")
vim.keymap.set("n", "<Leader>q", ":q<CR>")

vim.keymap.set("v", "J", "5j")
vim.keymap.set("v", "K", "5k")
vim.keymap.set("v", "p", "P")

vim.cmd("set mouse=a")
vim.cmd("set clipboard+=unnamedplus")

vim.cmd("set number")
vim.cmd("set cursorline")
vim.cmd("set hlsearch")
vim.cmd("set incsearch")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set cindent")
vim.cmd("set smarttab")

