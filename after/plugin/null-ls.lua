local null_ls_status_ok, null_ls = pcall(require, 'null-ls')
if not null_ls_status_ok then
    return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

-- .with({ extra_args = {} })

null_ls.setup({
    sources = {
        formatting.prettierd,
        diagnostics.eslint_d,
    },
})
