return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        init = function()
            local ensureInstalled = {
                "asm",
                "bash",
                "c",
                "cmake",
                "cpp",
                "css",
                "csv",
                "cuda",
                "dockerfile",
                "dot", --Graphviz DOT
                "fish",
                "git_rebase",
                "gitcommit",
                "go",
                "html",
                "javascript",
                "json",
                "lua",
                "make",
                "nasm",
                "python",
                "regex",
                "rust",
                "sql",
                "toml",
                "typst",
                "yaml",
            }
            local alreadyInstalled = require('nvim-treesitter.config').get_installed()
            local parsersToInstall = vim.iter(ensureInstalled)
                :filter(function(parser)
                    return not vim.tbl_contains(alreadyInstalled, parser)
                end)
                :totable()
            require('nvim-treesitter').install(parsersToInstall)

            vim.api.nvim_create_autocmd('FileType', {
                callback = function()
                    pcall(vim.treesitter.start)
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter-textobjects',
        branch = 'main',
    },
}
