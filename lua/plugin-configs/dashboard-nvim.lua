local M = {}

function M.dependencies()
  return { "nvim-tree/nvim-web-devicons" }
end

function M.config()
  require("dashboard").setup({
    theme = "hyper",
  })
end

return M
