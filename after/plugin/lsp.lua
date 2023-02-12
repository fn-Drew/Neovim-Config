local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'lua_ls',
})

-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-i>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-o>'] = cmp.mapping.confirm({ select = true }),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  -- go to definition
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts, {desc = "Go to Definition"})

  -- display information about current word 
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts, {desc = "Word Info"})

  -- search for symbol in workspace
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts, {desc = "Search for Symbol"})

  -- display what is being imported
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts, {desc = "Import Information"})
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

  -- open code action menu for current code
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts, {desc = "Code Actior"})
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts, {desc = "Reference"})
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
