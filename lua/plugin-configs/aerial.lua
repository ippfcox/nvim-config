local M = {}

function M.dependencies()
  return { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }
end

function M.config()
  require("aerial").setup()
end

return M
