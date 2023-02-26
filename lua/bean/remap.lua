vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fe", vim.cmd.Ex, { desc = "File Explorer" })
vim.keymap.set("n", "<leader>fn", vim.cmd.Vex, { desc = "New Tab File Explorer" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Highlighted Text Up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Highlighted Text Down" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Move Below Line Onto Current Line" })

-- keeps cursor in the middle of the screen when using <C-d> and <C-u>
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Down Half A Page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Up Half A Page" })

-- keeps cursor in the middle of the screen when searching
vim.keymap.set("n", "n", "nzzzv", { desc = "Next Result" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous Result" })

vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank To Clipboard" })
vim.keymap.set("n", "<leader>Y", 'gg"+yG', { desc = "Yank File To Clipboard" })
vim.keymap.set("n", "<leader>w", ':w<Enter>', { desc = "Save File" })

-- run c file with gcc
vim.keymap.set("n", "<leader>rc", ':!gcc % -o %< && %<<enter>', { desc = "Run file with GCC" })
-- make and run c file
vim.keymap.set("n", "<leader>rs", ':make %:r && %:r <enter>', { desc = "Make and run C file" })

-- run js file with node
vim.keymap.set("n", "<leader>rn", ':w !node<Enter>', { desc = "Run Node" })

-- switch window focus
vim.keymap.set("n", "<C-w>h>", 'window left')
vim.keymap.set("n", "<C-w>l>", 'window right')
vim.keymap.set("n", "<C-w>j>", 'window down')
vim.keymap.set("n", "<C-w>k>", 'window up')

vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace Current Word" })
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/bean/packer.lua<CR>", { desc = "Go To packer.lua" })
vim.keymap.set("n", "<leader>so", ':so<Enter>', { desc = "Shout Out" })
vim.keymap.set("n", "<leader>ps", ':PackerSync<Enter>', { desc = "Packer Sync" })

vim.keymap.set("n", "<leader>f", ':lua vim.lsp.buf.format()<Enter>', { desc = "Format" })

-- fun
vim.keymap.set("n", "<leader>gol", ':CellularAutomaton game_of_life<Enter>', { desc = "Game of Life" })
vim.keymap.set("n", "<leader>mir", ':CellularAutomaton make_it_rain<Enter>', { desc = "Make it Rain" })
-- set colorcolumn=80
-- vim.keymap.set("n", "<leader>cn", ':match Error /\%>80c/', { desc = "Color Column" })

-- toggle spell checker
local function vim_opt_toggle(opt, on, off, name)
    local message = name
    if vim.opt[opt]:get() == off then
        vim.opt[opt] = on
        message = message .. " Enabled"
    else
        vim.opt[opt] = off
        message = message .. " Disabled"
    end
    vim.notify(message)
end

vim.keymap.set("n", "<leader>s", function()
    vim_opt_toggle("spell", true, false, "Spelling")
end)

local function toggle_colorcolumn()
    local default_value = { 79 }
    local value = vim.inspect(vim.opt.colorcolumn:get())
    if value == "{}" then
        vim.opt.colorcolumn = default_value
    else
        vim.opt.colorcolumn = {}
    end
end

vim.keymap.set("n", "<leader>tc", function()
    toggle_colorcolumn()
end)
