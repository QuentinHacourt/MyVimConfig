local utils = require('utils')
require 'nvim-tree'.setup {}

utils.map('n', '<C-n>', ':NvimTreeToggle<CR>')
utils.map('n', '<leader>tr', ':NvimTreeRefresh<CR>')
utils.map('n', '<leader>n', ':NvimTreeFindFile<CR>')
