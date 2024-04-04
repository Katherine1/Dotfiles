require("essentials")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
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
    {'vhyrro/luarocks.nvim', priority=1000, config=true},
    {'nvim-neorg/neorg', dependencies = {'vhyrro/luarocks.nvim'}, lazy = false, version = "*", config = true}
})

