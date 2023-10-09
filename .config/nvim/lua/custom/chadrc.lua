---@type ChadrcConfig
local M = {}

M.mappings = require "custom.mappings"

M.ui = {
    theme = 'gruvchad',
    hl_override = {
      CursorLine = {
        bg = "#45413d",
        blend = 10,
      },
    },
    transparency = true,

    nvdash = {
        load_on_startup = true,

        header = {
            "                                 ",
        },

        buttons = {
        { "  Find File", "Spc f f", "Telescope find_files" },
        { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
        { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
        { "  Bookmarks", "Spc m a", "Telescope marks" },
        { "  Themes", "Spc t h", "Telescope themes" },
        { "  Mappings", "Spc c h", "NvCheatsheet" },
        },
    },
  statusline = {
    theme = "default",
    separator_style = "default",
    overriden_modules = nil,
  },
}

M.plugins = "custom.plugins"

return M
