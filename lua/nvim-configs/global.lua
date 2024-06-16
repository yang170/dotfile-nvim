local g = vim.g
-- theme
g.t_co = 256
vim.o.background = "dark"

-- clipboard
vim.opt.clipboard = "unnamedplus"
vim.keymap.set('n', '<leader>y', [["+y]], { desc = "Copy to system clipboard" })
