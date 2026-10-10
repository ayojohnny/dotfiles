vim.g.mapleader = " "

vim.o.termguicolors = true -- enable 24-bit colors
vim.o.tabstop = 2          -- how many spaces tab inserts
vim.o.softtabstop = 2      -- how many spaces tab inserts
vim.o.shiftwidth = 2
vim.o.number = true
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.scrolloff = 8
vim.o.wrap = false
vim.o.number = true
vim.o.signcolumn = "yes" -- always show sign column
vim.o.relativenumber = true
vim.o.cursorline = true
vim.diagnostic.config({ virtual_text = true }) -- inline diagonostics
