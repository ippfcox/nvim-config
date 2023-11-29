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

  { "nvim-tree/nvim-tree.lua", priority = 1000, config = require("plugin-configs.nvim-tree").config }, -- file tree
  { "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons", config = require("plugin-configs.bufferline").config }, -- bufferline, file tab
  { "neovim/nvim-lspconfig" }, -- official lspconfig
  { "williamboman/mason-lspconfig.nvim" },
  { "williamboman/mason.nvim" }, -- lsp server manager
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },
  { "mfussenegger/nvim-lint" },
  { "mhartington/formatter.nvim", config = require("plugin-configs.formatter").config }, -- code formatter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = require("plugin-configs.nvim-treesitter").config }, -- code highlight
  { "hrsh7th/cmp-nvim-lsp" }, -- { name = nvim_lsp }
  { "hrsh7th/cmp-buffer" }, -- { name = 'buffer' },
  { "hrsh7th/cmp-path" }, -- { name = 'path' }
  { "hrsh7th/cmp-cmdline" }, -- { name = 'cmdline' }
  { "hrsh7th/nvim-cmp", config = require("plugin-configs.nvim-cmp").config },
  { "hrsh7th/cmp-vsnip" }, -- { name = 'vsnip' }
  { "hrsh7th/vim-vsnip" },
  { "rafamadriz/friendly-snippets" },
  { "onsails/lspkind-nvim" }, -- code lsp style
  { "famiu/bufdelete.nvim" }, -- delete buffer without messing layout up
  { "nvim-lualine/lualine.nvim", config = require("plugin-configs.lualine").config }, -- status line
  { "karb94/neoscroll.nvim", config = require("plugin-configs.neoscroll").config }, -- for smooth scrolling
  { "lewis6991/gitsigns.nvim", config = require("plugin-configs.gitsigns").config }, -- for git signs
  -- { "lukas-reineke/indent-blankline.nvim", config = require("plugin-configs.indent-blankline").config }, -- for indent indicator
  { "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } }, -- for error display
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, config = require("plugin-configs.telescope").config },
  { "akinsho/toggleterm.nvim", config = require("plugin-configs.toggleterm").config },
  { "numToStr/Comment.nvim", config = require("plugin-configs.comment").config },
  { "nvimdev/dashboard-nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, event = "VimEnter", config = require("plugin-configs.dashboard-nvim").config },
})

-- confilct with tab vim.o.listchars
-- indent blankline
-- require("plugin-configs.indent-blankline")

-- trouble for error/warning display
-- no need to setup, maybe confugured by other plugin
-- require("plugin-configs.trouble")

-- lsp config
require("lsp.setup")
