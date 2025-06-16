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

        local lsp_configs = {'lua_ls','rust_analyzer', 'clangd', 'csharp_ls', 'fish_lsp', 'neocmake', 'qmlls', 'jdtls', 'pyright'}

        for _, lsp in ipairs(lsp_configs) do
            local ok, config = pcall(require, 'lsp.' .. lsp)
            if not ok then
                config = {}
            end
            vim.lsp.config(lsp, config)
            vim.lsp.enable(lsp)
        end
    end,
}
