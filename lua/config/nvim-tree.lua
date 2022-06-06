local utils = require('utils')
require'nvim-tree'.setup {}

utils.map('n', '<C-n>', ':NvimTreeToggle<CR>')  -- Git status
utils.map('n', '<leader>r', ':NvimTreeRefresh<CR>')  -- Git status
utils.map('n', '<leader>n', ':NvimTreeFindFile<CR>')  -- Git status
