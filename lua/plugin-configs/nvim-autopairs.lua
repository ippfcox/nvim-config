local M = {}

function M.config()
  return {
    {
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup()
      end,
    },
  }
end

return M
