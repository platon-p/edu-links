local opt = vim.opt

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- beauty tree
    -- P.S. Don't forget to install the nerd font
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly', -- optional, updated every week. (see issue #1193)
    }
    require('nvim-tree').setup()


    -- Colorscheme
    use 'morhetz/gruvbox'
    use 'sainnhe/everforest'
    use 'ayu-theme/ayu-vim'
    use 'doums/darcula'

    -- Utils
    -- prettier
    use {
        'prettier/vim-prettier',
        run = 'yarn install --frozen-lockfile --production',
    }
    -- wakatime
    use 'wakatime/vim-wakatime'
    -- terminal
    use {
        's1n7ax/nvim-terminal',
        config = function()
            vim.o.hidden = true
            require('nvim-terminal').setup()
        end,
    }

    -- LSP
    use 'neovim/nvim-lspconfig'
    -- installer
    use {
        'williamboman/nvim-lsp-installer',
        config = function()
            require('plugins/lsp-installer')
        end
    }
    -- icons
    use 'onsails/lspkind-nvim'

    use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end,
	}

    use {
		'hrsh7th/nvim-cmp',
		requires = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-nvim-lua'
		},
		config = function()
			require('plugins/cmp')
		end
	}

end)
