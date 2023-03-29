-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer plugin manager
	use("wbthomason/packer.nvim")

	-- fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- VISUAL: Theme, statusline, etc.
	use("catppuccin/nvim")
	use("nvim-lualine/lualine.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("lewis6991/gitsigns.nvim")
	use("norcalli/nvim-colorizer.lua")

	-- diagnostics, show available keybinds
	use("folke/which-key.nvim")
	use("folke/trouble.nvim")

	-- `gcc` to comment
	use("numToStr/Comment.nvim")

	use("github/copilot.vim")

	use("dstein64/vim-startuptime")

	-- surround selections, ysiw) to (surround_words)
	use({ "kylechui/nvim-surround", tag = "*" })

	-- toggleable terminal in neovim
	use({ "akinsho/toggleterm.nvim", tag = "*" })

	-- mark files, swap to them with <c-n>, etc.
	use("theprimeagen/harpoon")

	-- <leader>u to view undo history
	use("mbbill/undotree")

	-- vim git integration
	use("tpope/vim-fugitive")

	-- LSP, formatting, diagnostics, code actions
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
		requires = "nvim-treesitter/nvim-treesitter",
	})

	use("MunifTanjim/prettier.nvim")

	use({ "ckolkey/ts-node-action", requires = { "nvim-treesitter" } })

	use({
		"jose-elias-alvarez/null-ls.nvim",
		"jay-babu/mason-null-ls.nvim",
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		ebranch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" }, -- Optional
			{ "hrsh7th/cmp-path" }, -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" }, -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional
		},
	})
end)
