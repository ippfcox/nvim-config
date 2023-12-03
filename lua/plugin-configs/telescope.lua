local M = {}

function M.config()
  return {
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-tree/plenary.nvim" },
      config = function()
        require("telescope").setup()
      end,
    },
  }
end

return M
