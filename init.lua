local autocmd = vim.api.nvim_create_autocmd

local opt = vim.opt
local g = vim.g
local config = require("core.utils").load_config()
-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

g.rnvimr_enable_ex = 1
g.rnvimr_enable_picker = 1
g.rnvimr_shadow_winblend = 60
g.rnvimr_border_attr = { fg = 0, bg = -1}

g.tidal_no_mappings = 1
g.tidal_boot= "/home/twojastaralinuksiara/.local/share/nvim/lazy/vim-tidal/TidalCustom.ghci"
g.tidal_sc_enable = 1
g.tidal_sc_boot = "/home/twojastaralinuksiara/.local/share/nvim/lazy/vim-tidal/bootCustom.sc"
