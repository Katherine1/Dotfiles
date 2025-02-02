return {
    url = 'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    name = "lsp_lines",
    init = function ()
        vim.diagnostic.config({
            virtual_text = false,
        })
    end,
    keys = {
        { "<leader>l", function () require("lsp_lines").toggle() end, mode="n", desc="Toggle lsp_lines"},
    },
    opts = {},
    lazy = false
}
