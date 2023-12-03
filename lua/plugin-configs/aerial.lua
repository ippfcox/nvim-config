local M = {}

function M.toggle_right()
  return require("aerial").toggle({ focus = true, direction = "right" })
end

function M.config()
  return {
    {
      "stevearc/aerial.nvim",
      dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("aerial").setup()
      end,
    },
  }
end

return M
