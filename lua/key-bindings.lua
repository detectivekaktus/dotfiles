-- Neovim essentials
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Buffers
vim.keymap.set("n", "<leader>sp", ":sp<CR>", {})
vim.keymap.set("n", "<leader>vsp", ":vsp<CR>", {})
