vim.diagnostic.config({
    virtual_text = true,
    virtual_lines = false
})

-- language servers
-- :h lspconfig-all
-- gO
-- search for language server
vim.lsp.enable({
    "gopls",
    "rust_analyzer",
    "lua_ls",
    "hls"
})
