-- This file ca##n be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Fuzzy Finder 
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Color theme
    use('Mofiqul/dracula.nvim')

    -- Syntax highlighting
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    -- Quick file switching
    use('theprimeagen/harpoon')

    -- Undo re-branching
    use('mbbill/undotree')

    -- Git management
    use('tpope/vim-fugitive')
    use('lewis6991/gitsigns.nvim')

    -- File explorer
    use('stevearc/oil.nvim')
    use('nvim-tree/nvim-web-devicons')

    -- Language Server Protocol
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    -- Key-bind helper
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {}
        end
    }

    -- Sleek line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Whitespace Highlighter
    use("lukas-reineke/indent-blankline.nvim")

    -- Auto (un)commenting
    use('numToStr/Comment.nvim')

    -- My plugins
    use('hinkers/neotasks')
    use('hinkers/nvim-cheatsheet')

end)

