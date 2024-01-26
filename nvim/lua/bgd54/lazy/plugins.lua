return {
  -- TODO: LSP
  -- CHECK: trouble

  "folke/which-key.nvim",

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
  },

  'tpope/vim-commentary',
  'tpope/vim-surround',
  'theprimeagen/harpoon',
  'mbbill/undotree',
  'tpope/vim-fugitive',
  {
    'anuvyklack/pretty-fold.nvim',
    config = function()
      require('pretty-fold').setup()
    end
  },

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Colors
  {
      'rose-pine/neovim',
      name = 'rose-pine',
      config = function()
          vim.cmd('colorscheme rose-pine')
      end
  },
  'folke/tokyonight.nvim',
}
