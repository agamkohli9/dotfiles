local lspconfig = require "lspconfig"

lspconfig.clangd.setup{}
lspconfig.pyright.setup{
  filetypes = {
    "tada", "py", "python"
  }
}
