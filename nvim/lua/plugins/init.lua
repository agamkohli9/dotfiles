return {
  {
    'alexghergh/nvim-tmux-navigation',
    lazy = false,
    config = function()
      local nvim_tmux_nav = require('nvim-tmux-navigation')
      nvim_tmux_nav.setup {
        disable_when_zoomed = true, -- defaults to false
      }
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd", "pyright", "lua-language-server"
      }
    }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "cpp", "python"
      }
    }
  }
}
