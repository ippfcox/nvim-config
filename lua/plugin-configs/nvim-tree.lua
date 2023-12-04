local M = {}

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

M.config = {
  {
    "nvim-tree/nvim-tree.lua",
    priority = 1000,
    config = function()
      require("nvim-tree").setup({
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          -- dotfiles = true,
        },
        on_attach = require("keybindings").tree,
      })
    end,
  },
  {
    "famiu/bufdelete.nvim",
  }, -- delete buffer without messing layout up
}

return M
