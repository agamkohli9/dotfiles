local map = vim.keymap.set

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })
map("n", ";", "w", { desc = "Write to file" })
map("i", "jk", "<ESC>", { desc = "jk for normal mode" })
map("i", "kj", "<ESC>", { desc = "kj for normal mode" }) 
map('n', "<leader>e", ":lua vim.diagnostic.open_float(0, {scope=\"line\"})<CR>", { desc = "Show full error line"})


-- NVChad - tabufline
map("n", "<leader>bn", "<cmd>enew<CR>", { desc = "buffer new" })

map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>bx", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

map("n", "<leader>bl", function()
  require("nvchad.tabufline").move_buf(1)
end, { desc = "move buffer right" })

map("n", "<leader>bh", function()
  require("nvchad.tabufline").move_buf(-1)
end, { desc = "move buffer left" })

-- NVChad - nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
--map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "telescope nvchad themes" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", { desc = "telescope find all files" })

-- nvim-tmux-navigator
local nvim_tmux_nav = require('nvim-tmux-navigation')
map('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
map('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
map('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
map('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
map('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
map('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

-- CopilotChat.nvim
map("n", "<leader>c", "<cmd>CopilotChatToggle<CR>", { desc = "toggle Copilot chat" })
