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
        vim.api.nvim_create_autocmd('LspAttach', {
            desc = 'LSP actions',
            callback = function(event)
                local opts = {buffer = event.buf}

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
            end,
        })

        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {'lua_ls', 'powershell_es', 'rust_analyzer', 'clangd', 'csharp_ls', 'cmake', 'gopls', 'jdtls', 'sqlls', 'pylsp'},
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
                lua_ls = function()
                    local runtime_path = vim.split(package.path, ';')
                    table.insert(runtime_path, 'lua/?.lua')
                    table.insert(runtime_path, 'lua/?/init.lua')

                    local config = {
                        settings = {
                            Lua = {
                                -- Disable telemetry
                                telemetry = {enable = false},
                                runtime = {
                                    -- Tell the language server which version of Lua you're using
                                    -- (most likely LuaJIT in the case of Neovim)
                                    version = 'LuaJIT',
                                    path = runtime_path,
                                },
                                diagnostics = {
                                    -- Get the language server to recognize the `vim` global
                                    globals = {'vim'}
                                },
                                workspace = {
                                    checkThirdParty = false,
                                    library = {
                                        -- Make the server aware of Neovim runtime files
                                        vim.env.VIMRUNTIME,
                                        '${3rd}/luv/library'
                                    }
                                }
                            }
                        }
                    }

                require('lspconfig').lua_ls.setup(config)
            end,
        }
    })
    end,
    lazy = false
}
