
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
    disable_netrw = true,
    filters = { dotfiles = false},
    view = {
    adaptive_size = true,
    mappings = {
        list = {
            { key = "u", action = "dir_up" },
            { key = "s", action = "split" },
            { key = "v", action = "vsplit" },
      },
    },
  },
}
