local M = {}

function M.dependencies()
  return { "nvim-tree/nvim-web-devicons" }
end

function M.config()
  require("trouble").setup()
end

return M
