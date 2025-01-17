return {
    'mbbill/undotree',
    keys = {
        {'<leader>u', vim.cmd.UndotreeToggle, mode='n', desc='Toggle Undotree Window'},
    },
    lazy = true
}
