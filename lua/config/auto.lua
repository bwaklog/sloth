-- Format on save using LSP
-- vim.api.nvim_create_autocmd("BufWritePre", {
--     pattern = "*",
--     callback = function()
--         vim.lsp.buf.format({ async = false })
--     end,
-- })

-- vim.api.nvim_create_autocmd("VimEnter", {
--     callback = function()
--         require("fzf-lua").files()
--     end
-- })

vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        if vim.fn.isdirectory(vim.fn.expand('%')) == 1 then
            vim.defer_fn(function()
                require('fzf-lua').files()
                vim.defer_fn(function()
                    vim.cmd('startinsert!')
                end, 100)
            end, 10)
        end
    end,
    once = true
})
