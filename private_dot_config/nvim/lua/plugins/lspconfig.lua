return {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },
    opts = {},
    config = function ()
        local lspconfig_defaults = require('lspconfig').util.default_config
        lspconfig_defaults.capabilities = vim.tbl_deep_extend(
            'force',
            lspconfig_defaults.capabilities,
            require('blink.cmp').get_lsp_capabilities()
        )

        vim.lsp.enable('lua_ls')
        vim.lsp.enable('rust_analyzer')
        vim.lsp.enable('clangd')
        vim.lsp.enable('csharp_ls')
        vim.lsp.enable('neocmake')
        vim.lsp.enable('qmlls')
        vim.lsp.enable('jdtls')
        vim.lsp.enable('pyright')
        vim.lsp.enable('tinymist')
    end,
}
