if vim.g.neovide then
  local alpha = function()
    return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
  end

  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 0.8
  vim.g.neovide_background_color = "#1c1e1f" .. alpha()
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  -- vim.g.neovide_input_ime = false
  -- vim.g.neovide_input_macos_option_key_is_meta = true
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.g.neovide_input_ime = false
end
