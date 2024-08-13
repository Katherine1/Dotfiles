vim.g.is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1

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
	{'nvim-telescope/telescope.nvim', branch= '0.1.x', dependencies = {'nvim-lua/plenary.nvim'}},
    {'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
	{'nvim-treesitter/nvim-treesitter', run = {':TSUpdate'}},
	'mbbill/undotree',
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', lazy = true, config = false},
	{'neovim/nvim-lspconfig', dependencies = {'hrsh7th/cmp-nvim-lsp'}},
	{'hrsh7th/nvim-cmp', dependencies = {'L3MON4D3/LuaSnip'}},
	'williamboman/mason.nvim',
	{'williamboman/mason-lspconfig.nvim', dependencies = {'williamboman/mason.nvim', 'neovim/nvim-lspconfig'}},
    {'christoomey/vim-tmux-navigator', lazy = false},
    {'feline-nvim/feline.nvim', dependencies = {'catppuccin/nvim'}},
--    {'m4xshen/hardtime.nvim', dependencies = {'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim'}, opts = {} }
--    {'vhyrro/luarocks.nvim', priority=1000, config=true},
--    {'nvim-neorg/neorg', dependencies = {'vhyrro/luarocks.nvim'}, lazy = false, version = "*", config = true}
})

