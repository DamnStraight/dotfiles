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
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  {
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
    keys = {
      {
        "<Leader>l",
        function()
          require("lsp_lines").toggle()
        end,
        { desc = "Toggle lsp_lines" },
      }
    }
  },
}

return plugins
