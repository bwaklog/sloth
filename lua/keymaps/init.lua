require("keymaps.custom")
require("keymaps.window")

-- general buffer keymaps
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

local which_key = require("which-key")

--@type which_key.Spec
local general_map = {
    {
        mode = { "n" },
        {
            "<leader>cf",
            function()
                vim.cmd([[norm! ggVG=]])
            end,
            desc = "Format the file contents",
        },
    },
}

which_key.add(general_map)
