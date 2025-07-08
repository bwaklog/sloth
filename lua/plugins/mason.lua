return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "gopls",
            "gofumpt",
            "rust",
            "lua_ls",
            "hls",
            "clangd",
            "zls",
            "ruff",
            "pyright",
            "taplo",
            "yamlls",
            "clang-format",
            "sqls",
            "shfmt",
            "spellcheck",
            "html",
            "goimports"
        },
        automatic_installation = true,
    },
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            }
        },
        {
            'stevearc/dressing.nvim',
            opts = {},
        }
    }
}
