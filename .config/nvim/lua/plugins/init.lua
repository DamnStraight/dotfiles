return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "mfussenegger/nvim-lint"
  },

  {
    'MagicDuck/grug-far.nvim',
    config = function()
      require('grug-far').setup({
        -- options, see Configuration section below
        -- there are no required options atm
        -- engine = 'ripgrep' is default, but 'astgrep' can be specified
      });
    end,
    opts = {
      keymaps = {
        replace = '<Space>R',
      },
      headerMaxWidth = 80,
      startInInsertMode = false,
      windowCreationCommand = 'tabnew',
      transient = true,
    },
    cmd = 'GrugFar',
    keys = {
      {
        '<leader>sr',
        function()
          local grug = require('grug-far')
          local ext = vim.bo.buftype == '' and vim.fn.expand('%:e')
          grug.grug_far {
            transient = true,
            prefills = {
              filesFilter = ext and ext ~= '' and '*.' .. ext or nil,
            },
          }
        end,
        mode = { 'n', 'v' },
        desc = 'Search and Replace',
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects"
    }
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = require "configs.gitsigns"
  },

  {
    'echasnovski/mini.ai',
    version = false,
    lazy = false,
    config = function()
      require('mini.ai').setup()
    end
  },

  {
    'echasnovski/mini.align',
    event = { 'BufReadPost', 'BufNewFile' },
    version = false,
    opts = {},
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = true,
          style = {
            "#484b4c", -- Violet
            "#ec6b64", -- maple red
          },
        },
        indent = {
          enable = false,
        },
        line_num = {
          enable = false,
        },
        blank = {
          enable = false,
        },
      })
    end,
    keys = {
      {
        '<leader>ck',
        function()
          local chunk_mod = require('hlchunk.mods.chunk') {}

          vim.b.hlindent_t_state = not vim.b.hlindent_t_state

          if vim.b.hlindent_t_state then
            chunk_mod:enable()
          else
            chunk_mod:disable()
          end
        end,
        desc = 'Toggle hlchunk',
      },
    },
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = require "configs.flash",
    -- stylua: ignore
    keys = {
      { "s",          mode = { "n", "x", "o" }, function() require("flash").jump() end,                                        desc = "Flash" },
      { "S",          mode = { "n", "x", "o" }, function() require("flash").jump({ pattern = vim.fn.expand("<cword>"), }) end, desc = "Flash with current cursor word" },
      { "<leader>ts", mode = { "n", "x", "o" }, function() require("flash").treesitter() end,                                  desc = "Flash Treesitter" },
      --   { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      --   { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      --   { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  }
}
