---@type ChadrcConfig
local M = {}
local opt = vim.opt

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "gruvbox",
  theme_toggle = { "gruvbox", "gruvbox" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  tabufline = {
    overriden_modules = function()
      local modules = require "nvchad_ui.tabufline.modules"

      return {
        buttons = function()
          return ""
        end,
      }
    end,
  },

}


M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
