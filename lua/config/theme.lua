-- its the default, ik its stupid but nice

require("tokyonight").setup({
    on_colors = function(colors)
        colors.bg = "#14161b"
    end,
})

-- vim.cmd([[colorscheme tokyonight-night]])
-- vim.cmd([[colorscheme rose-pine]])
-- vim.cmd([[colorscheme gruvbox]])
-- vim.cmd([[colorscheme kanagawa]])



-- vim.g.tundra_biome = 'jungle'
-- vim.cmd([[colorscheme rose-pine]])
-- vim.cmd([[colorscheme farout]])

-- vim.cmd([[colorscheme github_light]])
-- vim.cmd([[colorscheme jb]])
-- vim.o.background = "light"

-- vim.cmd([[
-- vim.cmd([[colorscheme nord]])
-- highlight Normal guibg=NONE ctermbg=NONE
-- highlight NormalNC guibg=NONE ctermbg=NONE
-- highlight SignColumn guibg=NONE ctermbg=NONE
-- highlight VertSplit guibg=NONE ctermbg=NONE
-- highlight StatusLine guibg=#2c212e guifg=#db7692 ctermbg=NONE
--
-- highlight NormalFloat guibg=NONE ctermbg=NONE
-- highlight FloatBorder guibg=NONE ctermbg=NONE
--
-- highlight Visual guibg=#403d52 guifg=NONE gui=NONE
-- ]])

-- vim.api.nvim_set_hl(0, "StatuslineGit", { fg = "#191724", bg = "#eb6f92" })
-- vim.opt.statusline =
-- " [%{mode()}]%h %f %m%r %#StatuslineGit#%{get(b:,'gitsigns_status','')}%* %= %y %{&fileencoding} %l:%c ♥  "

-- require('lualine').setup()

-- just incase
require("lualine").setup({
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding' },
        -- lualine_y = { 'progress' },
        lualine_y = {},
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    options = {
        section_separators = '',
        component_separators = '',
    }
})
