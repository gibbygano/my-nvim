require("config.lazy")
require("tailwind-tools")

local builtin = require("telescope.builtin")
local configs = require("nvim-treesitter.configs")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.cmd.colorscheme "catppuccin"

vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

configs.setup({
  ensure_installed = { "lua", "javascript", "typescript", "css", "tsx", "html" },
  highlight = { enable = true },
  indent = { enable = true }
})
