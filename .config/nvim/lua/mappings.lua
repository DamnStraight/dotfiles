require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")


map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<leader>tt", function()
    require("base46").toggle_transparency()
end)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")