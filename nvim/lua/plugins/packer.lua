-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	 config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  use("ellisonleao/gruvbox.nvim")
  use("folke/tokyonight.nvim")
  use("tomasiser/vim-code-dark")
  use('shaunsingh/nord.nvim')
  use("rebelot/kanagawa.nvim")
  use "lunarvim/horizon.nvim"
  use('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('jacoborus/tender.vim')
  use 'martinsione/darkplus.nvim'
  use('tpope/vim-fugitive')
  use('tpope/vim-surround')
  use('vim-scripts/ReplaceWithRegister')
  use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }
  use("kyazdani42/nvim-web-devicons")
  use { "catppuccin/nvim", as = "catppuccin" }
  use ("savq/melange-nvim")
  use ("tanvirtin/monokai.nvim")
  use 'Mofiqul/vscode.nvim'
  use('kyazdani42/nvim-palenight.lua')
  use 'Mofiqul/dracula.nvim'
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-tree/nvim-tree.lua'
    }

    use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}
end)
