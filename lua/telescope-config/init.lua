local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- Key mappings for telescope file finder
local actions = require('telescope.actions')

-- Custom key mappings for telescope
local custom_mappings = {
  -- Open selected file in a vertical split
  ['<C-v>'] = actions.select_vertical,
  -- Open selected file in a horizontal split
  ['<C-s>'] = actions.select_horizontal,
}

-- Merge the custom key mappings with the default key mappings
require('telescope').setup{
  defaults = {
    mappings = {
      i = custom_mappings,
      n = custom_mappings,
    }
  }
}

