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
vim.g['fern#default_hidden'] = 1

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

-- クリップボードの共有
vim.opt.clipboard = 'unnamedplus'
if vim.fn.has("wsl") then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf"
    },
    paste = {
      ["+"] = "win32yank.exe -o --crlf",
      ["*"] = "win32yank.exe -o --crlf"
    },
    cache_enable = 0,
  }
end


--folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

require("settings/keymap")
require("settings/cmd")

require("lazyvim")
