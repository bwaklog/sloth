return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",

        --@type TSConfig
        opts = {
            ensure_installed = {
                "bash",
                "fish",
                "html",
                "javascript",
                "json",
                "lua",
                "rust",
                "go",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "regex",
                "tsx",
                "typescript",
                "vim",
                "yaml",
                "asm",
            },
            ident = { enabled = true },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        },

        --@param opts TSConfig
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end
    },
    {
        "nvim-treesitter/playground"
    }
}
