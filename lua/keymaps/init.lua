require("keymaps.custom")
require("keymaps.window")
require("keymaps.buffer")
require("keymaps.scratch")

-- general buffer keymaps
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- disable arrow keys
vim.keymap.set({'n', 'v', 'i'}, '<LEFT>', '<NOP>', { noremap = true, silent = true })
vim.keymap.set({'n', 'v', 'i'}, '<RIGHT>', '<NOP>', { noremap = true, silent = true })
vim.keymap.set({'n', 'v', 'i'}, '<UP>', '<NOP>', { noremap = true, silent = true })
vim.keymap.set({'n', 'v', 'i'}, '<DOWN>', '<NOP>', { noremap = true, silent = true })

vim.keymap.set('n', '<Esc>', ':nohlsearch<CR><Esc>', { noremap = true, silent = true })

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
            desc = "Resource the configuration"
        }
    },
}

which_key.add(general_map)
