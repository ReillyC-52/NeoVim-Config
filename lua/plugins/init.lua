return require('packer').startup(function(use)
	use   'wbthomason/packer.nvim'
	use { 'sts10/vim-pink-moon'    }
    use { 'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons',},
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
	use { 'nvim-lualine/lualine.nvim',
  	requires = { 'nvim-tree/nvim-web-devicons',
	opt      = true } }
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { 'tpope/vim-fugitive' }
    use { 'nvim-telescope/telescope.nvim', 
    requires = { 'nvim-lua/plenary.nvim' },
    tag = '0.1.0' }
    use { 'nvim-treesitter/nvim-treesitter',
    run = function()
    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
    ts_update()
    end, }
    use { 'nvim-treesitter/nvim-treesitter-refactor' }

    require('lualine').setup {}
	end)
