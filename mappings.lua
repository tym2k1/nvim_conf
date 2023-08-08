---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-n>"] = { "<cmd> RnvimrToggle <CR>", "Toggle Ranger" },
    ["d"] = { "_d" }
  },
}

-- more keybinds!

return M
