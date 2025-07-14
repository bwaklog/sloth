-- its the default, ik its stupid but nice
-- vim.cmd([[colorscheme tokyonight]])
vim.cmd([[colorscheme gruvbox-material]])

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

vim.api.nvim_set_hl(0, "StatuslineGit", { fg = "#191724", bg = "#eb6f92" })
vim.opt.statusline =
" [%{mode()}]%h %f %m%r %#StatuslineGit#%{get(b:,'gitsigns_status','')}%* %= %y %{&fileencoding} %l:%c ♥  "

-- just incase
-- vim.cmd([[colorscheme rose-pine]])
