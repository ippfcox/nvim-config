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
    require("plugin-configs.pc-debug").config,
    require("plugin-configs.pc-colorscheme").config,
    require("plugin-configs.pc-nvim-tree").config,
    require("plugin-configs.pc-bufferline").config,
    require("plugin-configs.pc-lsp").config,
    require("plugin-configs.pc-formatter").config,
    require("plugin-configs.pc-nvim-treesitter").config,
    require("plugin-configs.pc-nvim-cmp").config,
    require("plugin-configs.pc-lualine").config,
    require("plugin-configs.pc-neoscroll").config,
    require("plugin-configs.pc-gitsigns").config,
    require("plugin-configs.pc-trouble").config,
    require("plugin-configs.pc-telescope").config,
    require("plugin-configs.pc-toggleterm").config,
    require("plugin-configs.pc-comment").config,
    require("plugin-configs.pc-dashboard-nvim").config,
    require("plugin-configs.pc-which-key").config,
    require("plugin-configs.pc-nvim-autopairs").config,
    require("plugin-configs.pc-mason-tool-installer").config,
    require("plugin-configs.pc-aerial").config,
    require("plugin-configs.pc-nvim-scrollview").config,
    require("plugin-configs.pc-diffview").config,
    require("plugin-configs.pc-git-blame").config,
    require("plugin-configs.pc-auto-session").config,
    require("plugin-configs.pc-vim-illuminate").config,
    {}
  )
)
