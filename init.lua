vim.g.mapleader = " "

require("config.lazy")

vim.opt.statusline = " [%{mode()}]%h %f %m%r %{get(b:,'gitsigns_status','')} %= %y %{&fileencoding} %l:%c ♥  "

vim.opt.number = true
vim.opt.relativenumber = true

vim.cmd([[colorscheme rose-pine]])
