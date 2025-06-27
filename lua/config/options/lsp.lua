vim.diagnostic.config({
    -- virtual_text = false,
    virtual_lines = true,
})

-- language servers
-- :h lspconfig-all
-- gO
-- search for language server
vim.lsp.enable({
    "gopls",
    "rust_analyzer",
    "lua_ls",
    "hls",
    "clangd",
    "zls",
})

local lspconfig = require("lspconfig")
lspconfig.zls.setup({
    cmd = { "/usr/local/bin/zls" },
})
