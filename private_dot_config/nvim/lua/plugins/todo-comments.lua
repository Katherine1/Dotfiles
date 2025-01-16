return {
    "folke/todo-comments.nvim",
    dependencies = { "folke/snacks.nvim" },
    keys = {
        { "<leader>st", function() require("snacks").picker.todo_comments() end, desc = "Todo" },
        { "<leader>sT", function () require("snacks").picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } }) end, desc = "Todo/Fix/Fixme" },
    },
    lazy = true
}

