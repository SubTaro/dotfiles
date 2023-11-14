local opt = vim.opt

-- encoding
opt.encoding = 'utf-8'
vim.scriptencoding = 'utf-8'

-- visual
opt.tabstop = 4
opt.shiftwidth = 4
opt.number = true
vim.fn.setcellwidths{{0x2588, 0x258f, 1}}
vim.o.termguicolors=true

--search
opt.showmatch = true
opt.matchtime = 1
opt.autoindent = true
opt.smartindent = true

--etc
opt.swapfile = false
opt.helplang = 'ja', 'en'
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g.mapleader = " "
vim.opt.laststatus = 2

require("settings/keymap")
require("settings/cmd")

require("lazyvim")
