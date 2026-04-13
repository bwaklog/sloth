vim.diagnostic.config({
    virtual_text = true,
    -- virtual_lines = true,
})

vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

-- language servers
-- :h lspconfig-all
-- gO
-- search for language server
-- vim.lsp.enable({
--     "gopls",
--     "rust_analyzer",
--     "lua_ls",
--     "hls",
--     "clangd",
--     "zls",
-- })
