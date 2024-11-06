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
      -- "rcarriga/nvim-notify",
    }
  },
  -- {
  --   -- Color nested brackets with different colors
  --   'hiphish/rainbow-delimiters.nvim',
  --   event = 'BufReadPost',
  --   -- config = require "configs.rainbow-delimeters"
  -- },
  {
    -- Highlight usages of the word under the cursor
    'RRethy/vim-illuminate',
    event = { 'BufReadPost', 'BufNewFile' }
  },
  {
    -- Open Yazi in Neovim
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>v",
        "<cmd>Yazi<cr>",
        desc = "Open yazi at the current file",
      },
      {
        -- Open in the current working directory
        "<leader>cw",
        "<cmd>Yazi cwd<cr>",
        desc = "Open the file manager in nvim's working directory",
      },
    },
    opts = {
      use_ya_for_events_reading = true,
      use_yazi_client_id_flag = true,

      keymaps = {
        show_help = "~",
      },
    },
  },
  -- file managing , picker etc
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = {
      renderer = {
        root_folder_label = ":~:s?$?",
        -- root_folder_label = ":~:s?$?/..?",
      }
    }
  },
}

return plugins
