local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('n', '<C-s>', ':wa<CR>') -- save all buffers
utils.map('n', '<C-Q>', ':q!<CR>') -- quit nvim

-- tabbing
utils.map('v', '<', '<gv')
utils.map('v', '>', '>gv')

-- window navigation
utils.map('n', '<C-h>', '<C-w>h')
utils.map('n', '<C-j>', '<C-w>j')
utils.map('n', '<C-k>', '<C-w>k')
utils.map('n', '<C-l>', '<C-w>l')




-- utils.map('i', 'jk', '<Esc>')           -- jk to escape
