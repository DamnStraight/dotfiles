require "nvchad.options"
-- neovide settings
vim.opt.guifont = { "BerkeleyMono Nerd Font Mono", ":h14" }

vim.opt.relativenumber = true

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    virtual_text = false,
    signs = true,
    underline = true
  }
)
