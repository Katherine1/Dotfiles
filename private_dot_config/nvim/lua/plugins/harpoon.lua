return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = true,
    keys = {
        { '<C-e>', function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end, mode='n', desc="Open Harpoon Quick Menu" },
        { '<leader>a', function() require('harpoon'):list():add() end, mode='n', desc="Add current file to harpoon list" },
        { '<C-S-P>', function() require('harpoon'):list():prev() end, mode='n', desc="Switch to previous harpoon item" },
        { '<C-S-N>', function() require('harpoon'):list():next() end, mode='n', desc="Switch to next harpoon item" },
        { '<leader>1', function() require('harpoon'):list():select(1) end, mode='n', desc="Switch to harpoon item 1" },
        { '<leader>2', function() require('harpoon'):list():select(2) end, mode='n', desc="Switch to harpoon item 2" },
        { '<leader>3', function() require('harpoon'):list():select(3) end, mode='n', desc="Switch to harpoon item 3" },
        { '<leader>4', function() require('harpoon'):list():select(4) end, mode='n', desc="Switch to harpoon item 4" },
    },
    lazy = true
}
