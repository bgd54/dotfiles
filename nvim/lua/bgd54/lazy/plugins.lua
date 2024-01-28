return {
  -- TODO: LSP  harpoon2
  -- CHECK: trouble, nvimd-dap, nvim-tree?, onedark
  -- 'theprimeagen/harpoon',

  "folke/which-key.nvim",
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  'tpope/vim-surround',
  {
    'anuvyklack/pretty-fold.nvim',
    config = function()
      require('pretty-fold').setup()
    end
  },

  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
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
