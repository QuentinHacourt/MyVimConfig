local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lsp_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
)

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = { buffer = true }

        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        vim.keymap.set('n', '<leader>d', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', '<leader>D', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', '<leader>i', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', '<leader>o', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', '<leader>rf', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        vim.keymap.set('n', '<leader>s', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        vim.keymap.set({ 'n', 'x' }, '<leader>fo', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        vim.keymap.set('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

        vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
        vim.keymap.set('n', '<leader>pe', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
        vim.keymap.set('n', '<leader>ne', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
    end
})

lspconfig.tsserver.setup({})
lspconfig.eslint.setup({})
