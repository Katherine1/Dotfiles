vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "p", '"_dP')

vim.keymap.set("n", "<leader>gtl", function () vim.o.background = "light" end)
vim.keymap.set("n", "<leader>gtd", function () vim.o.background = "dark" end)

