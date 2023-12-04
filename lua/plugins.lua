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
require("lazy").setup(
  require("util.util").merge_arrays(
    require("plugin-configs.debug").config,
    require("plugin-configs.colorscheme").config,
    require("plugin-configs.nvim-tree").config,
    require("plugin-configs.bufferline").config,
    require("plugin-configs.lsp").config,
    require("plugin-configs.formatter").config,
    require("plugin-configs.nvim-treesitter").config,
    require("plugin-configs.nvim-cmp").config,
    require("plugin-configs.lualine").config,
    require("plugin-configs.neoscroll").config,
    require("plugin-configs.gitsigns").config,
    require("plugin-configs.trouble").config,
    require("plugin-configs.telescope").config,
    require("plugin-configs.toggleterm").config,
    require("plugin-configs.comment").config,
    require("plugin-configs.dashboard-nvim").config,
    require("plugin-configs.which-key").config,
    require("plugin-configs.nvim-autopairs").config,
    require("plugin-configs.mason-tool-installer").config,
    require("plugin-configs.aerial").config
  )
)
