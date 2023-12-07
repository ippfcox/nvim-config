local M = {}

M.config = {
  "sindrets/diffview.nvim",
  config = function()
    require("diffview").setup({})
  end,
}

return M
