local which_key = require("which-key")

--@type which_key.Spec
local general_map = {
    {
        mode = { "n" },
        {
            "<leader>cf",
            function()
            end,
            desc = "Format the file contents",
        },
        {
            "<leader>r",
            function()
                vim.cmd([[luafile %]])
            end,
            desc = "Resource the configuration"
        }
    },
}

which_key.add(general_map)
