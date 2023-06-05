local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.git_status, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
