vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Disable mouse and arrow keys
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("v", "<Right>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Down>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Right>", "<Nop>", { noremap = true })
vim.opt.mouse = ""

-- ^WH flip the windows
-- ^WT put the buffer in a new tab
vim.keymap.set("n", "<leader>vs", ":sp<CR>", { noremap = true })
vim.keymap.set("n", "<leader>vvs", ":vsp<CR>", { noremap = true })
vim.keymap.set("n", "<leader>H", ":vertical resize +5<CR>", { noremap = true })
vim.keymap.set("n", "<leader>J", ":horizontal resize -2<CR>", { noremap = true })
vim.keymap.set("n", "<leader>K", ":horizontal resize +2<CR>", { noremap = true })
vim.keymap.set("n", "<leader>L", ":vertical resize -5<CR>", { noremap = true })


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
