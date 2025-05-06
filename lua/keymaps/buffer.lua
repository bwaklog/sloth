local which_key = require("which-key")

--@type which_key.Spec
local general_map = {
    {
        mode = { "n" },
        {
            "<leader>b",
            group = "Buffer",
            desc = "Buffer Management"
        },
        {
            "<leader>bb",
            function() 
                vim.cmd([[bprev]])
            end,
            desc = "Switch with last buffer"
        },
        {
            "<leader>bd",
            function() 
                vim.cmd([[bdelete]])
            end,
            desc = "Delete the buffer"
        },
    },
}

which_key.add(general_map)
