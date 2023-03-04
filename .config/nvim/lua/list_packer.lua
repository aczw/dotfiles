vim.cmd 'packadd packer.nvim'

require('packer').startup(function(use)
    -- actual package manager
    use 'wbthomason/packer.nvim'

    -- LSP configs + plugins
    use {
        'neovim/nvim-lspconfig',
        requires = {
            -- easy LSP management
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',

            -- status updates for LSPs
            'j-hui/fidget.nvim',

            -- additional lua configs for nvim stuff
            'folke/neodev.nvim'
        }
    }

    -- autocompletion
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip'
        }
    }

    -- highlighting, editing, and navigating code
    use {
        'nvim-treesitter/nvim-treesitter',

        -- this function updates all parsers to the latest version when
        -- tree-sitter is updated
        run = function()
            pcall(require('nvim-treesitter.install').update {
                with_sync = true
            })
        end
    }

    -- additional text objects via treesitter
    use {
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = 'nvim-treesitter'
    }

    -- git integration
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'lewis6991/gitsigns.nvim'

    -- better statusline
    use 'nvim-lualine/lualine.nvim'

    -- add indentation guides
    use 'lukas-reineke/indent-blankline.nvim'

    -- quick commenting out visual regions + lines
    use 'numToStr/Comment.nvim'

    -- detect file tabstop and shiftwidth automatically
    use 'tpope/vim-sleuth'

    -- fuzzy finder (for files, LSP, etc.)
    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    -- fuzzy finder algorithm that requires local dependencies to be built.
    -- only load if 'make' is available
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make',
        cond = vim.fn.executable 'make' == 1
    }

    -- theming!
    use 'catppuccin/nvim'
    use 'nvim-tree/nvim-web-devicons'
    
    -- syntax support for kitty config files
    use 'fladson/vim-kitty'
end)

