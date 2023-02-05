function ColorMyPencils(color)
	color = color or "catppuccin-mocha"
	vim.cmd.colorscheme(color)

    -- make background transparent
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
