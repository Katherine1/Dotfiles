return {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
        'williamboman/mason.nvim',
        'neovim/nvim-lspconfig',
        'saghen/blink.cmp'
    },
    init = function ()
        vim.opt.signcolumn = 'yes'
    end,
    config = function ()
        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {'lua_ls', 'powershell_es', 'rust_analyzer', 'clangd', 'csharp_ls', 'neocmake', 'gopls', 'jdtls', 'sqlls', 'pylsp'},
            handlers = {
                function(server_name)
                    local ok, config = pcall(require, 'lsp.' .. server_name)
                    if not ok then
                        config = {}
                    end
                    require('lspconfig')[server_name].setup(config)
                end
            }
        })
    end,
    lazy = false
}
