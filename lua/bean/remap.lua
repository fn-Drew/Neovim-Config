vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fe", vim.cmd.Exe, {desc = "File Explorer"})
vim.keymap.set("n", "<leader>fn", vim.cmd.Vex, {desc = "New Tab File Explorer"})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move Highlighted Text Up"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move Highlighted Text Down"})

vim.keymap.set("n", "J", "mzJ`z", {desc = "Move Below Line Onto Current Line"})

-- keeps cursor in the middle of the screen when using <C-d> and <C-u>
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Down Half A Page"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Up Half A Page"})

-- keeps cursor in the middle of the screen when searching
vim.keymap.set("n", "n", "nzzzv", {desc = "Next Result"})
vim.keymap.set("n", "N", "Nzzzv", {desc = "Previous Result"})

vim.keymap.set("n", "<leader>y", '"+y', {desc = "Yank To Clipboard"})
vim.keymap.set("n", "<leader>Y", 'gg"+yG', {desc = "Yank File To Clipboard"})
vim.keymap.set("n", "<leader>w", ':w<Enter>', {desc = "Save File"})
vim.keymap.set("n", "<leader>rn", ':w !node<Enter>', {desc = "Run Node"})
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = "Replace Current Word"})
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/bean/packer.lua<CR>,", {desc = "Go To packer.lua"})

vim.keymap.set("n", "<leader>so", ':so<Enter>', {desc = "Shout Out"})
