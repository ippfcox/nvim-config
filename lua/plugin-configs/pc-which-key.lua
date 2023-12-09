local M = {}

M.config = {
  {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()
    end,
  },
}

return M
