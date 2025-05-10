-- Format on save using LSP
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

-- vim.api.nvim_create_autocmd("VimEnter", {
--     callback = function()
--         require("fzf-lua").files()
--     end
-- })
