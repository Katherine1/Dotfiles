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
    opts = {
        ensure_installed = {'lua_ls', 'powershell_es', 'clangd', 'csharp_ls', 'neocmake', 'jdtls'},
        handlers = {
            function(server_name)
                local ok, config = pcall(require, 'lsp.' .. server_name)
                if not ok then
                    config = {}
                end
                require('lspconfig')[server_name].setup(config)
            end
        }
    },
    lazy = false
}
