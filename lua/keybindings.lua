vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- nvim-tree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt);
map('n', '<A-h>', '<C-w>h', opt);
map('n', '<A-j>', '<C-w>j', opt);
map('n', '<A-k>', '<C-w>k', opt);
map('n', '<A-l>', '<C-w>l', opt);
-- bufferline
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt);
map('n', '<C-l>', ':BufferLineCycleNext<CR>', opt);
-- map('n', '', ':BufferLineCloseOthers<CR>', opt);
