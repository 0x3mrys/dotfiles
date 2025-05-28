vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope for fuzzy finding
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        requires = {
            {
                'nvim-lua/plenary.nvim',
            }
        }
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    -- Treesitter for better syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- Git integration
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'
    use 'kdheepak/lazygit.nvim'

    -- Utility plugins
    use 'mbbill/undotree'
    use 'norcalli/nvim-colorizer.lua'
    use 'HakonHarnes/img-clip.nvim'

    -- LSP and autocompletion
    use 'Hoffs/omnisharp-extended-lsp.nvim'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'neovim/nvim-lspconfig' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    -- Debugger
    use 'mfussenegger/nvim-dap'
    use 'nvim-neotest/nvim-nio'
    use 'rcarriga/nvim-dap-ui'
    use 'mrcjkb/rustaceanvim'

    use "EdenEast/nightfox.nvim"

    use {
        'yetone/avante.nvim',
        branch = 'main',
        run = 'make',
        config = function()
            require('avante').setup()
        end,
        requires = {
            { 'stevearc/dressing.nvim' },
            { 'MunifTanjim/nui.nvim' },
            { 'MeanderingProgrammer/render-markdown.nvim' },
        }
    }
end)
