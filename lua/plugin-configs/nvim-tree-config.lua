local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- setup
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  git = {
    ignore = false,
  },
})

-- toggle tree
map("n", "<A-/>", "<Cmd>NvimTreeToggle<CR>", opts)
