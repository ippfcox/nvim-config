local M = {}

function M.config()
  require("dashboard").setup({
    theme = "hyper",
  })
end

return M
