vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use("nvim-treesitter/playground")
	use("ellisonleao/gruvbox.nvim")
	use({
		"kyazdani42/nvim-tree.lua"
	})
	use({
		"neovim/nvim-lspconfig",
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			{ "williamboman/mason.nvim", config = true },
			"williamboman/mason-lspconfig.nvim",

			-- Useful status updates for LSP
			-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
			{ "j-hui/fidget.nvim", tag = "legacy", opts = {} },

			-- Additional lua configuration, makes nvim stuff amazing!
		},
	})
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	})

	use({ "folke/neodev.nvim", opts = {} })
	use("hrsh7th/nvim-cmp")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	-- Adds LSP completion capabilities
	use("hrsh7th/cmp-nvim-lsp")

	-- Adds a number of user-friendly snippets
	use("rafamadriz/friendly-snippets")
	use({ "mhartington/formatter.nvim" })
	use({
		"ckipp01/stylua-nvim",
		config = function()
			require("stylua-nvim").setup({ config_file = "stylua.toml" })
		end,
	})
	use({
		"moozd/aidoc.nvim",
		config = function()
			require("aidoc").setup({
				email = "tjens23@student.sdu.dk",
				width = 65,
				keymap = "<leader>d",
			})
		end,
	})
	use("lervag/vimtex")
    use 'Mohammed-Taher/AdvancedNewFile.nvim'
    use 'nvim-tree/nvim-web-devicons'
end)
