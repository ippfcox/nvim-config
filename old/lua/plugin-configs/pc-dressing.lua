local M = {}

M.config = {
  {
    "stevearc/dressing.nvim",
    config = function()
      require("dressing").setup({
        input = {
          border = "single",
        },
        nui = {
          border = "single",
        },
        builtin = {
          border = "single",
        },
      })
    end,
  },
}

return M
