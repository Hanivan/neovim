local is_installed, packer = pcall(require, "packer")
local fn = vim.fn
local cmd = vim.cmd
local use = packer.use

local function bootstrap()
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
		cmd("packadd packer.nvim")
	end
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]])

if not is_installed then
	bootstrap()
else
	packer.init({
		display = {
			open_cmd = "leftabove 80vnew [packer]",
			header_sym = "─",
		},
		profile = {
			enable = true,
			threshold = 1,
		},
	})

	packer.startup(function()
		use({
			"wbthomason/packer.nvim",
			opt = true,
		})

		-- use("EdenEast/nightfox.nvim")
		use("NTBBloodbath/doom-one.nvim")
		use({
			"mlaursen/vim-react-snippets",
			event = "BufRead",
			opt = true,
		})
		use({
			"briancollins/vim-jst",
			event = "BufRead",
			opt = true,
		})
		use({
			"nikvdp/ejs-syntax",
			event = "BufRead",
			opt = true,
		})
		use({
			"mxw/vim-jsx",
			event = "BufRead",
			opt = true,
		})
		use({
			"stephpy/vim-php-cs-fixer",
			event = "BufRead",
			opt = true,
		})
		use({
			"nathom/filetype.nvim",
			event = "BufWinEnter",
			opt = true,
		})
		use({
			"tpope/vim-surround",
			event = "BufWinEnter",
		})
		use({
			"AndrewRadev/tagalong.vim",
			event = "BufRead",
			opt = true,
		})
		use({
			"lewis6991/impatient.nvim",
		})
		use({
			"dstein64/vim-startuptime",
			cmd = "StartupTime",
			opt = true,
		})
		use({
			"plasticboy/vim-markdown",
			opt = true,
		})
		use({
			"norcalli/nvim-colorizer.lua",
			event = "BufWinEnter",
			opt = true,
		})
		use({
			"ervandew/supertab",
			opt = true,
		})
		use({
			"jose-elias-alvarez/null-ls.nvim",
			after = "nvim-lspconfig",
			config = "require('utils.plugins.null-ls')",
		})
		use({
			"nvim-treesitter/nvim-treesitter-refactor",
			after = "nvim-lspconfig",
		})
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
			after = "nvim-lspconfig",
			event = "BufRead",
			config = "require('utils.plugins.nvim-treesitter')",
		})
		use({
			"kyazdani42/nvim-web-devicons",
			event = "BufWinEnter",
			opt = true,
		})
		use({
			"nvim-lua/plenary.nvim",
			event = "BufWinEnter",
		})
		use({
			"nvim-telescope/telescope.nvim",
			event = "BufWinEnter",
		})
		use({
			"folke/which-key.nvim",
			event = "BufRead",
			opt = true,
		})
		use({
			"glepnir/dashboard-nvim",
			event = "BufWinEnter",
			config = "require('utils.plugins.dashboard-nvim')",
			opt = true,
		})
		use({
			"kyazdani42/nvim-tree.lua",
			after = "nvim-web-devicons",
			config = "require('utils.plugins..nvim-tree-config')",
			--cmd = "NvimTreeToggle"
		})
		use({
			"nvim-lualine/lualine.nvim",
			event = "BufWinEnter",
			config = "require('utils.plugins.lualine')",
		})
		use({
			"akinsho/bufferline.nvim",
			after = "nvim-web-devicons",
			event = "BufWinEnter",
			config = "require('utils.plugins.bufferline-nvim')",
		})
		use({
			"numToStr/Comment.nvim",
			event = "BufRead",
			config = "require('utils.plugins.comment-nvim')",
			opt = true,
		})
		use({
			"lukas-reineke/indent-blankline.nvim",
			event = "BufRead",
			config = "require('utils.plugins.indent-blankline')",
			opt = true,
		})
		use({
			"windwp/nvim-autopairs",
			event = "BufWinEnter",
			after = "nvim-cmp",
			config = "require('utils.plugins.autopairs')",
		})
		use({
			"lewis6991/gitsigns.nvim",
			event = "BufWinEnter",
			config = "require('utils.plugins.gitsigns')",
		})
		use({
			"onsails/lspkind-nvim",
			event = "InsertEnter",
			opt = true,
		})
		use({
			"neovim/nvim-lspconfig",
			after = "nvim-cmp",
			event = "BufWinEnter",
			config = "require('utils.lsp.language-servers')",
		})
		use({
			"sumneko/lua-language-server",
			event = "BufWinEnter",
		})
		use({
			"williamboman/nvim-lsp-installer",
			after = "nvim-cmp",
			event = "BufWinEnter",
		})
		use({
			"hrsh7th/nvim-cmp", -- Autocompletion plugin
			after = "lspkind-nvim",
			event = "InsertEnter",
			config = "require('utils.lsp.nvim-cmp')",
		})
		use({
			"hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
			after = "nvim-cmp",
		})
		use({
			"saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
			after = "nvim-cmp",
		})
		use({
			"L3MON4D3/LuaSnip", -- Snippets plugin
			after = "nvim-cmp",
		})
	end)
end
