local lsp = require('lsp-zero').preset({})

-- cmp
local lspkind = require('lspkind')
require('lsp-zero').extend_cmp()
-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    sources = {
        {name = 'nvim_lsp', option={ show_autosnippets = true }}
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = true }),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    },
    formatting = {
        format = lspkind.cmp_format({ with_text=true, maxwidth=50})
    }
})
-- vim.cmd [[
--     set completeopt=menuone,noinsert,noselect
--     highlight! default link CmpItemKind CmpItemMenuDefault
-- ]]
-- end of cmp

-- Diagnostic icons
lsp.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»',
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require('lspconfig').custom_elements_ls.setup({})
require('lspconfig').emmet_ls.setup({})
require('lspconfig').tsserver.setup({})


lsp.setup()

