local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Search Workspace Files"})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {desc = "Search Git Files"})
vim.keymap.set('n', '<leader>gr', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, {desc = "Grep Workspace"})

vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer]' })
