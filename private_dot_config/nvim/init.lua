-- vim.g.is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1

require("essentials")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
        lazyrepo,
		lazypath,
	})
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg"},
            { out, "WarningMsg" },
            {"\nPress any key to exit..."},
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{'nvim-telescope/telescope.nvim', branch= '0.1.x', dependencies = {'nvim-lua/plenary.nvim'}, lazy = true},
    {'ellisonleao/gruvbox.nvim', priority = 1000, config = true },
    {'nvim-treesitter/nvim-treesitter', run = {':TSUpdate'}, lazy = true},
    {'mbbill/undotree', lazy = true},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', lazy = true, config = false},
	{'neovim/nvim-lspconfig', lazy = true},
    {'saghen/blink.cmp', version = 'v0.*', dependencies = {'rafamadriz/friendly-snippets'}, lazy = false},
    {'williamboman/mason.nvim', lazy = true},
	{'williamboman/mason-lspconfig.nvim', dependencies = {'williamboman/mason.nvim', 'neovim/nvim-lspconfig'}, lazy = true},
    {'christoomey/vim-tmux-navigator', lazy = false},
    {'nvim-tree/nvim-web-devicons', lazy = true},
    {'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},
    {'lewis6991/gitsigns.nvim', lazy = true},
    {'romgrk/barbar.nvim', dependencies = {'lewis6991/gitsigns.nvim', 'nvim-tree/nvim-web-devicons'}, version = '^1.0.0'}
--    {'m4xshen/hardtime.nvim', dependencies = {'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim'}, opts = {} }
--    {'vhyrro/luarocks.nvim', priority=1000, config=true},
--    {'nvim-neorg/neorg', dependencies = {'vhyrro/luarocks.nvim'}, lazy = false, version = "*", config = true}
})

