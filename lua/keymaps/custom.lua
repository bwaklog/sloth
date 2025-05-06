local which_key = require("which-key")

--@type which_key.Spec
local general_map = {
    {
        "<leader>?",
        function()
            require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
    },
    {
        "<leader>E",
        function()
            require("oil").open(".")
        end,
        desc = "Open oil in root directory",
    },
    {
        "<leader>F",
        function()
            require("neo-tree.command").execute({})
        end,
        desc = "Open Neotree",
    },
    {
        "<leader><leader>",
        function()
            require("fzf-lua").files()
        end,
        desc = "Open FZF files",
    },
    {
        {
            "<leader>f",
            group = "FzfLua",
            desc = "FzfLua"
        },
        {
            "<leader>ff",
            function()
                require("fzf-lua").files()
            end,
            desc = "Open FZF files",
        },
        {
            "<leader>fb",
            function()
                require("fzf-lua").buffers()
            end,
            desc = "Open FZF files",
        },

    }
}

which_key.add(general_map)
