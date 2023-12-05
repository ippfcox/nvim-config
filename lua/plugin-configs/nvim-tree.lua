local M = {}

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local icon_documents = require("util.icon").get("documents", false)
local icon_git = require("util.icon").get("git", false)

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
          add_trailing = false,
          group_empty = true,
          highlight_git = true,
          highlight_opened_files = "none",
          special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", "CMakeLists.txt" },
          indent_markers = {
            enable = true,
            icons = {
              corner = "└",
              edge = "│",
              item = "│",
              bottom = "─",
              none = " ",
            },
          },
          icons = {
            git_placement = "signcolumn",
            glyphs = {
              -- default = icon_documents.Default,
              -- symlink = icon_documents.Symlink,
              -- bookmark = icon_documents.Bookrark,
            },
          },
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
