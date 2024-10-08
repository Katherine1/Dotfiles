vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.guifont='Maple Mono NF'

vim.opt.nu=true
vim.opt.relativenumber = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
-- if vim.g.is_windows then
--     vim.opt.undodir = os.getenv("LOCALAPPDATA") .. "/nvim-data/undodir"
-- else
--     vim.opt.undodir = os.getenv("XDG_CACHE_HOME") .. "/nvim/undodir"
-- end
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors=true

vim.opt.scrolloff=8

vim.opt.updatetime=50

vim.opt.colorcolumn = "80,120"
