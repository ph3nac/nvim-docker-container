require("packer").startup(function()
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/meson-lspconfig.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/vim-vsnip'
  -- use "hrsh7th/cmp-path"
  -- use "hrsh7th/cmp-buffer"
  -- use "hrsh7th/cmp-cmdline"
end)
