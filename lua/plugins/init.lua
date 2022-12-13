return require('packer').startup(function(use)
 -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }
  use { 'sts10/vim-pink-moon'    }
  use { 'nvim-lua/plenary.nvim'  }
  use { 'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
        tag = 'nightly' }
  use { 'nvim-treesitter/nvim-treesitter',
        run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end, }
  use { 'nvim-treesitter/nvim-treesitter-refactor' }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'tpope/vim-fugitive' } 
  use { 'nvim-telescope/telescope.nvim', 
        requires = { 'nvim-lua/plenary.nvim' },
        tag = '0.1.0' }
end)

