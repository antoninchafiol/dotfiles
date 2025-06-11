--- s file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
--
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- basic packer
	use('wbthomason/packer.nvim')
    -- theme
	use({
		"neanias/everforest-nvim",
		config = function()
			vim.cmd("colorscheme everforest")
		end,

	})
    --- Telescope - fuzzy finder
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    -- Look
    use({ 'nvim-tree/nvim-web-devicons' })
    use({"nvim-lualine/lualine.nvim",
        config = function()
            require('lualine').setup {
                options= {theme = 'everforest'}
            }
        end
    })
    --- File Tree
    use({'nvim-tree/nvim-tree.lua'})

    --- Syntax & Higlights
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Others / To filter
    -- use('mbbil/undotree')
    use("nvim-lua/plenary.nvim")
    use({
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    })

    -- Prog only
    -- Auto pair
    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }
    -- Git
    use({
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('gitsigns').setup()
        end
    })
    use ('tpope/vim-fugitive')
    --------------------- Default LSP / Completion / Formatters -----------------------
	use({
		'williamboman/mason.nvim',
    })
	use('williamboman/mason-lspconfig.nvim')
	use('neovim/nvim-lspconfig')
	use('hrsh7th/nvim-cmp')                     -- Core completion plugin :contentReference[oaicite:6]{index=6}
	use('hrsh7th/cmp-nvim-lsp')                 -- LSP source for nvim-cmp
	use('L3MON4D3/LuaSnip')                     -- Snippet engine (optional)
	use('saadparwaiz1/cmp_luasnip')     -- Snippet completions
	use('jose-elias-alvarez/null-ls.nvim')
	use('jay-babu/mason-null-ls.nvim')

    -- Rust IDE part
    use {
        'mrcjkb/rustaceanvim',
        ft = { 'rust' },
        requires = {
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
        },
        version = '^5',
        -- we want this loaded immediately so DAP is ready
        lazy = false,
        config = function()
            require('ntaun.lsp.rust.rustaceanvim')
        end,
    }
    use {
        'mfussenegger/nvim-dap',
        config = function()
            require('ntaun.lsp.rust.nvim-dap')
        end,
    }
    use {
        'rcarriga/nvim-dap-ui',
        requires = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
        config = function()
            require("dapui").setup()
        end,
    }
    use {
        'rust-lang/rust.vim',
        ft = 'rust',
        config = function()
            require("ntaun.lsp.rust.rust-vim")
        end,
    }
    use {
        'saecki/crates.nvim',
        ft = { 'toml' },
        config = function()
            require('ntaun.lsp.rust.crates')
        end,
    }

     -- Python LSP / DAP
     use{'linux-cultist/venv-selector.nvim',
     requires = {
         'neovim/nvim-lspconfig',
         'nvim-telescope/telescope.nvim',
         'mfussenegger/nvim-dap-python',
     },
     config = function ()
         require('ntaun.venv-selector')
     end,
     cmd = {'VenvSelect','VenvSelectCached'},
     keys = {'<leader>vs', '<leader>vc' },
 }
end)



