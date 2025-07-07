return {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("everforest").setup({
            background = "hard",
        })
    end,
    keys = {
        {"<leader>gtt", function()
            --local everforest = require("everforest")
            if vim.o.background == "dark" then
                vim.o.background = "light"
                --everforest.background = "soft"
            else
                vim.o.background = "dark"
                --everforest.background = "hard"
            end
            --vim.o.background= vim.o.background == "dark" and "light" or "dark"
        end, mode="n", desc="Toggle Between Dark and Light Mode"},
    },
}
