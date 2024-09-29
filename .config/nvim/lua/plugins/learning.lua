-- Plugins that help with learning Neovim
local plugins = {
  {
    -- 
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
