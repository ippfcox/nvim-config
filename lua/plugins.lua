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

local nvimtree = require("plugin-configs.nvim-tree")
local bufferline = require("plugin-configs.bufferline")
local formatter = require("plugin-configs.formatter")
local nvimtreesitter = require("plugin-configs.nvim-treesitter")
local nvimcmp = require("plugin-configs.nvim-cmp")
local lualine = require("plugin-configs.lualine")
local neoscroll = require("plugin-configs.neoscroll")
local gitsigns = require("plugin-configs.gitsigns")
local trouble = require("plugin-configs.trouble")
local telescope = require("plugin-configs.telescope")
local toggleterm = require("plugin-configs.toggleterm")
local comment = require("plugin-configs.comment")
local dashboardnvim = require("plugin-configs.dashboard-nvim")
local whichkey = require("plugin-configs.which-key")
local nvimautopairs = require("plugin-configs.nvim-autopairs")
local masontoolinstaller = require("plugin-configs.mason-tool-installer")
local aerial = require("plugin-configs.aerial")

-- plugins list
require("lazy").setup({
  -- colorscheme plugin
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true }, -- theme
  { "rmehri01/onenord.nvim", priority = 1000, config = true }, -- theme
  { "navarasu/onedark.nvim" },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },

  { "nvim-tree/nvim-tree.lua", priority = 1000, config = nvimtree.config }, -- file tree
  { "akinsho/bufferline.nvim", dependencies = bufferline.dependicies(), config = bufferline.config }, -- bufferline, file tab
  { "neovim/nvim-lspconfig" }, -- official lspconfig
  { "williamboman/mason-lspconfig.nvim" },
  { "williamboman/mason.nvim" }, -- lsp server manager
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },
  { "mfussenegger/nvim-lint" },
  { "mhartington/formatter.nvim", config = formatter.config }, -- code formatter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = nvimtreesitter.config }, -- code highlight
  { "hrsh7th/cmp-nvim-lsp" }, -- { name = nvim_lsp }
  { "hrsh7th/cmp-buffer" }, -- { name = 'buffer' },
  { "hrsh7th/cmp-path" }, -- { name = 'path' }
  { "hrsh7th/cmp-cmdline" }, -- { name = 'cmdline' }
  { "hrsh7th/nvim-cmp", config = nvimcmp.config },
  { "hrsh7th/cmp-vsnip" }, -- { name = 'vsnip' }
  { "hrsh7th/vim-vsnip" },
  { "rafamadriz/friendly-snippets" },
  { "onsails/lspkind-nvim" }, -- code lsp style
  { "famiu/bufdelete.nvim" }, -- delete buffer without messing layout up
  { "nvim-lualine/lualine.nvim", config = lualine.config }, -- status line
  { "karb94/neoscroll.nvim", config = neoscroll.config }, -- for smooth scrolling
  { "lewis6991/gitsigns.nvim", config = gitsigns.config }, -- for git signs
  -- { "lukas-reineke/indent-blankline.nvim", config = require("plugin-configs.indent-blankline").config }, -- for indent indicator
  { "folke/trouble.nvim", dependencies = trouble.dependencies() }, -- for error display
  { "nvim-telescope/telescope.nvim", dependencies = telescope.denpenencies(), config = telescope.config },
  { "akinsho/toggleterm.nvim", config = toggleterm.config },
  { "numToStr/Comment.nvim", config = comment.config },
  { "nvimdev/dashboard-nvim", dependencies = dashboardnvim.dependencies(), event = "VimEnter", config = dashboardnvim.config },
  { "folke/which-key.nvim", config = whichkey.config },
  { "windwp/nvim-autopairs", config = nvimautopairs.config },
  { "WhoIsSethDaniel/mason-tool-installer.nvim", config = masontoolinstaller.config },
  { "stevearc/aerial.nvim", dependencies = aerial.dependencies(), config = aerial.config },
})

-- confilct with tab vim.o.listchars
-- indent blankline
-- require("plugin-configs.indent-blankline")

-- trouble for error/warning display
-- no need to setup, maybe confugured by other plugin
-- require("plugin-configs.trouble")

-- lsp config
require("lsp.setup").config()
