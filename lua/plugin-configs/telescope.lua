local M = {}

M.config = {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-tree/plenary.nvim" },
    config = function()
      require("telescope").setup()
    end,
  },
}

return M
