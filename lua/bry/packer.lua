-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
        use {
                'nvim-telescope/telescope.nvim', tag = '0.1.2',
                -- or                            , branch = '0.1.x',
                requires = { { 'nvim-lua/plenary.nvim' } }
        }

        use({ 'rose-pine/neovim', as = 'rose-pine' })
        -- use 'eddyekofo94/gruvbox-flat.nvim'

        use {
                'nvim-treesitter/nvim-treesitter',
                run = ':TSUpdate'
        }
        use 'nvim-lua/plenary.nvim'
        use 'mbbill/undotree'
        use 'tpope/vim-fugitive'
        use 'nvim-tree/nvim-tree.lua'
        use 'nvim-tree/nvim-web-devicons'
        -- use "lukas-reineke/indent-blankline.nvim"
        use "lewis6991/gitsigns.nvim"
        use "zootedb0t/citruszest.nvim"
        use "catppuccin/nvim"
        use "EdenEast/nightfox.nvim" -- Packer
        use "ellisonleao/gruvbox.nvim"

        use 'NLKNguyen/papercolor-theme'

        use "nvim-treesitter/nvim-treesitter-context"

        use {
                "windwp/nvim-autopairs",
                -- config = function() require("nvim-autopairs").setup {} end
        }
        use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
        use {
                'numToStr/Comment.nvim',
                config = function()
                        require('Comment').setup()
                end
        }

        use {
                'cameron-wags/rainbow_csv.nvim',
                config = function()
                        require 'rainbow_csv'.setup()
                end,
                -- optional lazy-loading below
                module = {
                        'rainbow_csv',
                        'rainbow_csv.fns'
                },
                ft = {
                        'csv',
                        'tsv',
                        'csv_semicolon',
                        'csv_whitespace',
                        'csv_pipe',
                        'rfc_csv',
                        'rfc_semicolon'
                }
        }

        use({
                "kylechui/nvim-surround",
                tag = "*", -- Use for stability; omit to use `main` branch for the latest features
                config = function()
                        require("nvim-surround").setup({
                                -- Configuration here, or leave empty to use defaults
                        })
                end
        })

        use {
                'nvim-lualine/lualine.nvim',
                requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        }

        use {
                'VonHeikemen/lsp-zero.nvim',
                branch = 'v2.x',
                requires = {
                        -- LSP Support
                        { 'neovim/nvim-lspconfig' }, -- Required
                        {                            -- Optional
                                'williamboman/mason.nvim',
                                run = function()
                                        pcall(vim.cmd, 'MasonUpdate')
                                end,
                        },
                        { 'williamboman/mason-lspconfig.nvim' },


                        -- Autocompletion
                        { 'hrsh7th/nvim-cmp' },     -- Required
                        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
                        { 'L3MON4D3/LuaSnip' },     -- Required
                }
        }


        use 'm4xshen/autoclose.nvim'
        -- use {
        --         'windwp/nvim-ts-autotag',
        --
        -- }
end)
