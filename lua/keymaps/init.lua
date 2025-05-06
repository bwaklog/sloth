require("keymaps.custom")
require("keymaps.window")
require("keymaps.buffer")
require("keymaps.scratch")

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
                local pos = vim.api.nvim_win_get_cursor(0)
                vim.cmd([[norm! gg=G]])
                vim.api.nvim_win_set_cursor(0, pos)
            end,
            desc = "Format the file contents",
        },
        {
            "<leader>r",
            function()
                vim.cmd([[luafile %]])
            end,
            desc = "Reload current lua file"
        }
    },
}

which_key.add(general_map)
