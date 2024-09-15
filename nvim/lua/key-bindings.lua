-- Neovim essentials
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Buffers
vim.keymap.set("n", "<leader>vs", ":sp<CR>", { noremap = true })
vim.keymap.set("n", "<leader>vvs", ":vsp<CR>", { noremap = true })

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

-- Windows
vim.api.nvim_set_keymap("n", "<leader>pp", "<C-w>>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>mp", "<C-w><", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>vpp", "<C-w>_", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>vmp", "<C-w>-", { noremap = true })

-- Tabs
vim.api.nvim_set_keymap("n", "<leader>tb", ":tabnew<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tbc", ":tabclose<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tt", ":tabnext<CR>", { noremap = true })
