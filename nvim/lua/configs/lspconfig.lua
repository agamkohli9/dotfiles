local lspconfig = require "lspconfig"

lspconfig.clangd.setup{}
lspconfig.pyright.setup{
  filetypes = {
    "tada", "py", "python"
  }
}

vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
