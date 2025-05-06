local which_key = require("which-key")

--@type which_key.Spec
local general_map = {
    {
        mode = { "n" },
        {
            "<leader>sv",
            function()
                vim.cmd([[vsp]])
            end,
            desc = "create a vertical window"
        },
        {
            "<leader>sh",
            function() 
                vim.cmd([[sp]])
            end,
            desc = "create a vertical window"
        },
        {
            "<C-h>",
            "<C-w>h",
            desc = "Switch to the left window",
        },
        {
            "<C-l>",
            "<C-w>l",
            desc = "Switch to the right window",
        },
        {
            "<C-k>",
            "<C-w>k",
            desc = "Switch to the top window",
        },
        {
            "<C-j>",
            "<C-w>j",
            desc = "Switch to the bottom window",
        },
    }
}

which_key.add(general_map)
