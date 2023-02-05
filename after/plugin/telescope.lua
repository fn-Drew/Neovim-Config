local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ts', builtin.git_files, {})
vim.keymap.set('n', '<leader>ne', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

