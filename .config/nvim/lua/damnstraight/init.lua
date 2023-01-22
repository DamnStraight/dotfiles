require("damnstraight.remap")
require("damnstraight.set")

require('bufferline').setup{}

-- Enable transparency in sonokai, 1 = some, 2 = all
vim.g.sonokai_transparent_background = 2
vim.cmd.colorscheme('sonokai')

-- Manually set certain color backgrounds to transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none" })

-- Hide the end of buffer character '~' 
vim.wo.fillchars='eob: '

-- Disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
