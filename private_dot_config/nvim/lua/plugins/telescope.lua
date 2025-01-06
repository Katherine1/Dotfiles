return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { '<leader>pf', require('telescope.builtin').find_files, mode = 'n' },
        { '<leader>pg', require('telescope.builtin').git_files, mode = 'n' },
        { '<leader>ps', require('telescope.builtin').live_grep, mode = 'n' }
    },
    lazy = true
}

