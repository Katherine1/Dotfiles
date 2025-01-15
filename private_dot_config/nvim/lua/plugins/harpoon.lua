return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = true,
    keys = {
        { '<C-e>', function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end, mode = 'n' },
        { '<leader>a', function() require('harpoon'):list():add() end, mode = 'n' },
        { '<C-S-P>', function() require('harpoon'):list():prev() end, mode = 'n' },
        { '<C-S-N>', function() require('harpoon'):list():next() end, mode = 'n' },
        { '<leader>1', function() require('harpoon'):list():select(1) end, mode = 'n' },
        { '<leader>2', function() require('harpoon'):list():select(2) end, mode = 'n' },
        { '<leader>3', function() require('harpoon'):list():select(3) end, mode = 'n' },
        { '<leader>4', function() require('harpoon'):list():select(4) end, mode = 'n' },
    },
    lazy = true
}
