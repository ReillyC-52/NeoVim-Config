local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)

map('i', 'kj', '<esc>', opts)
map('c', 'kj', '<esc>', opts)
map('i', 'KJ', '<esc>', opts)
map('c', 'KJ', '<esc>', opts)

map('n', 'Y', 'y$', opts)

map('v', '<C-c>','"*y"',opts)

map('', '<leader>h',':wincmd h<CR>',opts)
map('', '<leader>j',':wincmd j<CR>',opts)
map('', '<leader>k',':wincmd k<CR>',opts)
map('', '<leader>l',':wincmd l<CR>',opts)


map('n', '<C-Right>', ':vertical resize +3<CR>', opts)
map('n', '<C-Left>', ':vertical resize -3<CR>', opts)
map('n', '<C-Down>', ':resize +3<CR>', opts)
map('n', '<C-Up>', ':resize -3<CR>', opts)

