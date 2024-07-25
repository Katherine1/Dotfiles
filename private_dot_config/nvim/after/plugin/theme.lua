require("catppuccin").setup({
    integrations = {
        treesitter = true,
        mason = false,
        cmp = true,
        telescope = {
            enabled = true
        },
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = {"italic"},
                hints = {"italic"},
                warnings = {"italic"},
                information = {"italic"}
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" }
            },
            inlay_hints = {
                background = true
            }
        }
    }
})

local ctp_feline = require('catppuccin.groups.integrations.feline')

require("feline").setup({
    components = ctp_feline.get(),
})

require("feline").winbar.setup()

vim.cmd.colorscheme("catppuccin")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
