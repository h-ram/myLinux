return require('packer').startup(function(use)
	use "wbthomason/packer.nvim"
	use "nvim-tree/nvim-tree.lua"
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})



	-- ColorSchemes
	use "folke/tokyonight.nvim"
	use "rebelot/kanagawa.nvim"
	use "ellisonleao/gruvbox.nvim" 
end)
