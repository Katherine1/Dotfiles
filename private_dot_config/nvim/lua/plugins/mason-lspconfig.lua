return {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
        'williamboman/mason.nvim',
        'neovim/nvim-lspconfig',
    },
    opts = {
        ensure_installed = {'lua_ls', 'powershell_es', 'clangd', 'csharp_ls', 'neocmake', 'jdtls', 'pyright'},
        handlers = {
            function(server_name)
                local ok, config = pcall(require, 'lsp.' .. server_name)
                if not ok then
                    config = {}
                elseif config.root_markers then
                    config.root_dir = require('lspconfig.util').root_pattern(unpack(config.root_markers))
                end
                require('lspconfig')[server_name].setup(config)
            end
        }
    },
    lazy = false
}
