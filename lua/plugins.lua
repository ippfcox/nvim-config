-- config lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- plugins list
require("lazy").setup({
	-- colorscheme plugin
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true }, -- theme
	{ "rmehri01/onenord.nvim", priority = 1000, config = true }, -- theme
	{ "navarasu/onedark.nvim" },

	{ "nvim-tree/nvim-tree.lua", priority = 1000, config = true }, -- file tree
	{ "nvim-tree/nvim-web-devicons", priority = 1000, config = true }, -- file icon
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" }, -- bufferline, file tab
	{ "neovim/nvim-lspconfig" }, -- official lspconfig
	{ "williamboman/mason-lspconfig.nvim" },
	{ "williamboman/mason.nvim" }, -- lsp server manager
	{ "mfussenegger/nvim-dap" },
	{ "rcarriga/nvim-dap-ui" },
	{ "mfussenegger/nvim-lint" },
	{ "mhartington/formatter.nvim" }, -- code formatter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }, -- code highlight
	{ "hrsh7th/cmp-nvim-lsp" }, -- { name = nvim_lsp }
	{ "hrsh7th/cmp-buffer" }, -- { name = 'buffer' },
	{ "hrsh7th/cmp-path" }, -- { name = 'path' }
	{ "hrsh7th/cmp-cmdline" }, -- { name = 'cmdline' }
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-vsnip" }, -- { name = 'vsnip' }
	{ "hrsh7th/vim-vsnip" },
	{ "rafamadriz/friendly-snippets" },
	{ "onsails/lspkind-nvim" }, -- code lsp style
	{ "famiu/bufdelete.nvim" }, -- delete buffer without messing layout up
	{ "nvim-lualine/lualine.nvim" }, -- status line
	{ "karb94/neoscroll.nvim" }, -- for smooth scrolling
	{ "lewis6991/gitsigns.nvim" }, -- for git signs
	{ "lukas-reineke/indent-blankline.nvim" }, -- for indent indicator
	{ "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } }, -- for error display
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "akinsho/toggleterm.nvim" },
})

-- nvim-tree config
require("plugin-configs.nvim-tree")

-- bufferline config
require("plugin-configs.bufferline")

-- nvim-treesitter config
require("plugin-configs.nvim-treesitter")

-- nvim-cmp config
require("plugin-configs.nvim-cmp")

-- formatter config
require("plugin-configs.formatter")

-- lualine status line config
require("plugin-configs.lualine")

-- smooth scroll
require("plugin-configs.neoscroll")

-- git sign
require("plugin-configs.gitsigns")

-- confilct with tab vim.o.listchars
-- indent blankline
-- require("plugin-configs.indent-blankline")

-- trouble for error/warning display
require("plugin-configs.trouble")

-- telescope
require("plugin-configs.telescope")

-- toggleterm for better terminal
require("plugin-configs.toggleterm")

-- lsp config
require("lsp.setup")
