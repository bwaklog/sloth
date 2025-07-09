return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        opts = {
            styles = {
                bold = true,
                italic = true,
                transparency = true,
            },

            highlight_groups = {
                -- accented statusline
                StatusLine = { fg = "love", bg = "love", blend = 10 },
                StatusLineNC = { fg = "subtle", bg = "surface" },

                -- leafy search
                CurSearch = { fg = "base", bg = "leaf", inherit = false },
                Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },
            },
        },
    },

    {
        'sam4llis/nvim-tundra',
        opts = {
            transparent_background = true,
        }
    },

    {
        "nickkadutskyi/jb.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            -- require("jb").setup({ transparent = true })
        end,
    },

    {
        'projekt0n/github-nvim-theme',
        name = 'github-theme',
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require('github-theme').setup({
                -- ...
            })
            -- vim.cmd('colorscheme github_dark')
        end,
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "night",
            transparent = false,
            sidebars = "normal", -- style for sidebars, see below
            floats = "normal",
        },
    },

    {
        "shaunsingh/nord.nvim",
        config = function()
            vim.g.nord_disable_background = true
            vim.g.nord_cursorline_transparent = true
            vim.g.nord_borders = true
            vim.g.nord_contrast = false
        end,
    },

    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.gruvbox_material_transparent_background = 1
            vim.g.gruvbox_material_dim_inactive_windows = 1
            vim.g.gruvbox_material_enable_bold = 1
            vim.g.gruvbox_material_background = "hard"
            vim.g.gruvbox_material_enable_italic = true
            -- vim.cmd.colorscheme("gruvbox-material")
        end,
    },
}
