require("keymaps.custom")
require("keymaps.window")
require("keymaps.buffer")
require("keymaps.code")
require("keymaps.lsp")
require("keymaps.scratch")

-- general buffer keymaps
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

vim.keymap.set("n", "j", "gj", { noremap = true, silent = true })
vim.keymap.set("n", "k", "gk", { noremap = true, silent = true })

-- disable arrow keys
vim.keymap.set({ 'n', 'v', 'i' }, '<LEFT>', '<NOP>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'i' }, '<RIGHT>', '<NOP>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'i' }, '<UP>', '<NOP>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'i' }, '<DOWN>', '<NOP>', { noremap = true, silent = true })

vim.keymap.set('n', '<Esc>', ':nohlsearch<CR><Esc>', { noremap = true, silent = true })

local which_key = require("which-key")

--@type which_key.Spec
local general_map = {
    {
        mode = { "n" },
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
