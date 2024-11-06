-- Plugins that help with learning Neovim
local plugins = {
  {
    -- Highlights unique characters in each word when using f/F
    'jinh0/eyeliner.nvim',
    event = "VeryLazy",
    config = function()
      require('eyeliner').setup {
        highlight_on_key = true,
        dim = true
      }
    end
  },
  {
    -- Displays hints for navigating current line buffer
    "tris203/precognition.nvim",
    event = "VeryLazy",
    opts = require "configs.precognition",
  },
}

return plugins
