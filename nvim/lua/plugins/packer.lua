local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float {
                border = "rounded"
            }
        end
    }
}

require("packer").startup(function()
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/vim-vsnip'
    use "rebelot/kanagawa.nvim"
		use 'norcalli/nvim-colorizer.lua'
    -- use "hrsh7th/cmp-path"
    -- use "hrsh7th/cmp-buffer"
    -- use "hrsh7th/cmp-cmdline"
end)
