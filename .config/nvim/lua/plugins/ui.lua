local plugins = {
  {
    -- Highlight specified text occurences
    'echasnovski/mini.hipatterns',
    version = false,
    event = { 'BufReadPost', 'BufNewFile' },
    config = require "configs.mini-hipatterns"
  },
  {
    -- Replace UI for cmdline and messages
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = require "configs.noice",
    dependencies = {
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      "rcarriga/nvim-notify",
    }
  },
  {
    -- Color nested brackets with different colors
    'hiphish/rainbow-delimiters.nvim',
    event = 'BufReadPost',
    -- config = require "configs.rainbow-delimeters"
  },
  {
    -- Highlight usages of the word under the cursor
    'RRethy/vim-illuminate',
    event = { 'BufReadPost', 'BufNewFile' }
  },
}

return plugins
