return {
    url = 'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    name = "lsp_lines",
    init = function ()
        vim.diagnostic.config({
            virtual_text = false,
        })
    end,
    config = function ()
        vim.keymap.set("", "<Leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
    end,
    opts = true,
    lazy = false
}
