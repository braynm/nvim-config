local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({ buffer = bufnr })

        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

vim.lsp.set_log_level("debug")
lsp.ensure_installed({
        -- Replace these with whatever servers you want to install
        'tsserver',
        'eslint',
        'elixirls',
        'gleam',
})


require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require 'lspconfig'.tsserver.setup {}
require 'lspconfig'.gleam.setup {}
require 'lspconfig'.elixirls.setup {
        cmd = { "/Users/brymadrid/elixir-ls/language_server.sh" },
}

require 'lspconfig'.eslint.setup({})

lsp.format_on_save({
        format_opts = {
                async = false,
                timeout_ms = 10000,
        },
        servers = {
                ['lua_ls'] = { 'lua' },
                ['eslint'] = { 'javascript' },
                ['rust_analyzer'] = { 'rust' },
                -- if you have a working setup with null-ls
                -- you can specify filetypes it can format.
                -- ['null-ls'] = { 'javascript', 'typescript' },
        }
})


lsp.setup()

-- For this to work you need to install these plugins:
-- hrsh7th/cmp-path
-- hrsh7th/cmp-nvim-lsp
-- hrsh7th/cmp-buffer
-- saadparwaiz1/cmp_luasnip
-- rafamadriz/friendly-snippets

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()


require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
        sources = {
                { name = 'path' },
                { name = 'nvim_lsp' },
                { name = 'buffer',  keyword_length = 3 },
                { name = 'luasnip', keyword_length = 2 },

        },
        mapping = {
                ['<CR>'] = cmp.mapping.confirm({ select = false }),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-f>'] = cmp_action.luasnip_jump_forward(),
                ['<C-b>'] = cmp_action.luasnip_jump_backward(),

        }
})
