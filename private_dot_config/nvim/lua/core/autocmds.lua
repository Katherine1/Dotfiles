if not vim.fn.has("win32") == 1 and not vim.fn.has("win64") == 1 then
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
        pattern = {"*"},
        command = [[%s/\s\+$//e]],
    })
end
