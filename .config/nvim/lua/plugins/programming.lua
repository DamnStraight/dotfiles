local plugins = {
  {
    "mrcjkb/rustaceanvim",
    version = '^5', -- Recommended
    lazy = false,   -- This plugin is already lazy
  },
  {
    -- Switch between single-line and multiline forms of code
    "Wansmer/treesj",
    keys = {
      { "J", ":TSJToggle<CR>", silent = true },
    },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = require "configs.treesj"
  },
}

return plugins
