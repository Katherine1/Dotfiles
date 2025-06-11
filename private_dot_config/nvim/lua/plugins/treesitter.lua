return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
        ensure_installed = { "c", "cpp", "c_sharp", "cmake", "cuda", "go", "lua", "java", "qmljs", "vim", "vimdoc", "query", "rust", "sql", "python" },
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        indent = {
            enable = true,
        }
    },
    lazy = false
}
