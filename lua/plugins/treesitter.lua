return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",

        --@param opts TSConfig
        config = function()
            require("nvim-treesitter").setup({
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
            })
        end
    },
    -- {
    --     "nvim-treesitter/playground"
    -- }
}
