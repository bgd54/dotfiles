return {
  -- TODO: LSP  harpoon2,
  -- CHECK: trouble, nvimd-dap, nvim-tree?
  -- 'theprimeagen/harpoon',

  "folke/which-key.nvim",
  'tpope/vim-commentary',
  'tpope/vim-surround',
  {
    'anuvyklack/pretty-fold.nvim',
    config = function()
      require('pretty-fold').setup()
    end
  },

  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {},
    config = function()
      require("ibl").setup()
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    config = function()
      require('lualine').setup {
        options = {
          theme = 'onedark',
        },
      }
    end,
  },

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
