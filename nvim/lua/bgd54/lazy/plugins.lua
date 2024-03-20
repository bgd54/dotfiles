return {
    -- TODO: test clangD lsp, ibl setup, comments, which-key
    -- CHECK: trouble, nvimd-dap, nvim-tree?, onedark
    -- 'theprimeagen/harpoon',

    {
        "folke/which-key.nvim",
        opts = {},
        config = function()
            -- document existing key chains
            require('which-key').register {
                ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
                ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
                ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
                ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
                ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
                ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
                ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
            }
        end,
    },
    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim',               opts = {} },

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

    {'dhruvasagar/vim-table-mode'},

    -- Colors
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    },
    {
        -- Theme inspired by Atom
        'navarasu/onedark.nvim',
    },
    'folke/tokyonight.nvim',
}
