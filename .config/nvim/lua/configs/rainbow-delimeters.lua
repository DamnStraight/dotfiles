local config = function()
  local rainbow = require('rainbow-delimiters')
  require('rainbow-delimiters.setup').setup {
    -- strategy = {
    --   [''] = function(bufnr)
    --     -- Disabled for very large files, global strategy for large files,
    --     -- local strategy otherwise
    --     local line_count = vim.api.nvim_buf_line_count(bufnr)
    --     if line_count > 10000 then
    --       return nil
    --     elseif line_count > 1000 then
    --       return rainbow.strategy['global']
    --     end
    --     return rainbow.strategy['local']
    --   end,
    -- },
    highlight = {
      -- 'RainbowDelimiterRed',
      'RainbowDelimiterBlue',
      'RainbowDelimiterYellow',
      'RainbowDelimiterViolet',
      'RainbowDelimiterOrange',
      'RainbowDelimiterGreen',
      -- 'RainbowDelimiterCyan',
    },
  }
end

return config
