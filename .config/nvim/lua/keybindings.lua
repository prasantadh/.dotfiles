-- quick escape
vim.keymap.set('i', 'df', '<esc>')

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>e', '<cmd>CocCommand explorer<cr>')

-- navigation
vim.keymap.set({'n', 't'}, '<C-h>', '<Cmd>NvimTmuxNavigateLeft<cr>')
vim.keymap.set({'n', 't'}, '<C-j>', '<Cmd>NvimTmuxNavigateDown<cr>')
vim.keymap.set({'n', 't'}, '<C-k>', '<Cmd>NvimTmuxNavigateUp<cr>')
vim.keymap.set({'n', 't'}, '<C-l>', '<Cmd>NvimTmuxNavigateRight<cr>')

-- first character
vim.keymap.set('', '0', '^')
vim.keymap.set('n', 'H', 'H^')
vim.keymap.set('n', 'M', 'M^')
vim.keymap.set('n', 'L', 'L^')
