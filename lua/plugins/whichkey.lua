return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
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
			"<leader><leader>",
			function()
				require("fzf-lua").files()
			end,
			desc = "Open FZF files",
		},

		{
			"<leader>f",
			function()
				require("neo-tree.command").execute({})
			end,
			desc = "Open NeoTree"
		}
	},
}
