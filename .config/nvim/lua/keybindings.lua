-- quick escape
vim.keymap.set('i', 'df', '<esc>')

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>e', '<cmd>CocCommand explorer<cr>')

-- navigation
vim.keymap.set('n', '<C-h>', '<Cmd>NvimTmuxNavigateLeft<cr>')
vim.keymap.set('n', '<C-j>', '<Cmd>NvimTmuxNavigateDown<cr>')
vim.keymap.set('n', '<C-k>', '<Cmd>NvimTmuxNavigateUp<cr>')
vim.keymap.set('n', '<C-l>', '<Cmd>NvimTmuxNavigateRight<cr>')
