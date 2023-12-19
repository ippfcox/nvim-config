local M = {}

M.config = {
  {
    "stevearc/dressing.nvim",
    config = function()
      require("dressing").setup({})
    end,
  },
}

return M
