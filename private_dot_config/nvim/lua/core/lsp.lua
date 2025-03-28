vim.diagnostic.config({
    virtual_lines= { current_line = false }
})

vim.keymap.set("n", "<leader>l", function()
    vim.diagnostic.config({
        virtual_lines = {
            current_line = not vim.diagnostic.config().virtual_lines.current_line
        }
    }) end, {desc="Toggle virtual lines"})

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = {buffer = event.buf}

        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "gws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "gof", function() vim.diagnostic.open_float() end, opts)
--        vim.keymap.set("n", "[d", function() vim.diagnostic.jump({count=1, float=true}) end, opts) --default in 0.11
--        vim.keymap.set("n", "]d", function() vim.diagnostic.jump({count=-1, float=true}) end, opts) --default in 0.11
--        vim.keymap.set("n", "gra", function() vim.lsp.buf.code_action() end, opts) -- default in 0.11
--        vim.keymap.set("n", "grn", function() vim.lsp.buf.rename() end, opts) -- default in 0.11
        vim.keymap.set("i", "gsh", function() vim.lsp.buf.signature_help() end, opts)
    end,
})
