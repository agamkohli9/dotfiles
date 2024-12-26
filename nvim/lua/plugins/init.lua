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
    end,
    opts = {
      servers = {
        clangd = {
          mason = false
        }
      }
    }
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright", "lua-language-server"
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
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "configs.gitsigns"
    end
  },

  {
    "tpope/vim-fugitive",
  },

  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },

  {
    'github/copilot.vim',
    lazy = false,
  },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      mappings = {
        complete = {
          detail = 'Use @<Tab> or /<Tab> for options.',
          insert = '<S-Tab>'
        }
      }
    },
    -- See Commands section for default commands if you want to lazy load on them
    lazy = false,
  },
}

