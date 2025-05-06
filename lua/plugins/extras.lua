return {
    {
        -- illuminate every instance of text under 
        -- the cursor
        "RRethy/vim-illuminate",
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {
            indent = { char = "│" },
            -- this does not work
            scope = {
                enabled = true,
                show_start = true,
                show_end = false,
                injected_languages = false,
                highlight = { "Function", "Label" },
                priority = 500,
            },
        },
    },
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        }
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    {
        'tpope/vim-fugitive' 
    },
}
