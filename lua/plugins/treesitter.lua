return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",

        --@type TSConfig
        opts = {
            ensure_installed = {
                "asm",
                "bash",
                "fish",
                "go",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "regex",
                "rust",
                "tsx",
                "typescript",
                "vim",
                "yaml",
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
