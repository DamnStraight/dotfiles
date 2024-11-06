-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "gruvchad",
  transparency = true,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  statusline = {
    theme = "vscode_colored"
  },

  nvdash = {
    load_on_startup = true
  },
}

M.mason = {
  cmd = true,
  pkgs = {
    "rust-analyzer",
    "typescript-language-server",
    "biome",
    "tailwind-language-server",
    "html-lsp",
    "css-lsp"
  },
}

return M
