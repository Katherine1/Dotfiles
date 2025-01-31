vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = 'Move selected text down'})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = 'Move selected text up'})

vim.keymap.set("v", "p", '"_dP', {desc = 'paste from yank in visual mode'})

