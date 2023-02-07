vim.g.mapleader = " "
-- (mode, keybind, command that it executes)

-- open vim file explorer
vim.keymap.set("n", "<leader>rs", vim.cmd.Ex)

-- open vim file explorer in new tab
vim.keymap.set("n", "<leader>sr", vim.cmd.Vex)

-- move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- when using J it doesn't place cursor at the end of the line
vim.keymap.set("n", "J", "mzJ`z")

-- keeps cursor in the middle of the screen when using <C-d> and <C-u>
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keeps cursor in the middle of the screen when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Replace all occurences of current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- go to packer.lua
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/bean/packer.lua<CR>");

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')

-- yank whole file to system clipboard
vim.keymap.set("n", "<leader>Y", 'gg"+yG')

-- faster save
vim.keymap.set("n", "<leader>w", ':w<Enter>')

-- save & run file with node
vim.keymap.set("n", "<leader>rn", ':w !node<Enter>')

