vim.api.nvim_create_autocmd('LspAttach', {
    -- group = vim.api.nvim_create_augroup('my.lsp', {}),
    callback = function(event)
        vim.keymap.del('n', 'K', { buffer = event.buf })

        -- jump to definition
        vim.keymap.set("n", "L", vim.diagnostic.open_float, { desc = "Hover Documentatio" })

        -- goto definitions
        vim.keymap.set("n", "gd", require("fzf-lua").lsp_definitions, { desc = "LSP: FZF Definitions" })

        vim.keymap.set("n", "grr", require("fzf-lua").lsp_references, { desc = "LSP: FZF References" })

        vim.keymap.set("n", "gs", require("fzf-lua").lsp_document_symbols, { desc = "LSP: FZF Document Symbols" })
        vim.keymap.set("n", "gS", require("fzf-lua").lsp_workspace_symbols, { desc = "LSP: FZF Workspace Symbols" })

        -- codeaction
        -- definition
        -- implementation
        -- references
        -- rename
    end
})
