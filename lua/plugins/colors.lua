return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			styles = {
				bold = true,
				italic = true,
				transparency = true,
			},

			highlight_groups = {
				-- accented statusline
				StatusLine = { fg = "love", bg = "love", blend = 10 },
				StatusLineNC = { fg = "subtle", bg = "surface" },

				-- leafy search
				CurSearch = { fg = "base", bg = "leaf", inherit = false },
				Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },
			},
		},
	},
}
