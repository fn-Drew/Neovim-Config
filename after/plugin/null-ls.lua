local null_ls = require("null-ls")

local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local hover = null_ls.builtins.hover
local completion = null_ls.builtins.completion

-- diagnostics and formatting
null_ls.setup({
	sources = {
		-- lua
		formatting.stylua,
		-- web dev
		diagnostics.eslint_d,
		formatting.prettierd,
		code_actions.eslint_d,
	},
})

-- code actions with ts-node-action
require("null-ls").register({
	name = "more_actions",
	method = { require("null-ls").methods.CODE_ACTION },
	filetypes = { "_all" },
	generator = {
		fn = require("ts-node-action").available_actions,
	},
})
