local M = {}

function M.config()
  return {
    {
      "mhartington/formatter.nvim",
      config = function()
        -- local util = require("formatter.util")

        require("formatter").setup({
          logging = true,
          log_level = vim.log.levels.WARN,
          filetype = {
            lua = {
              require("formatter.filetypes.lua").stylua,
            },
            c = {
              require("formatter.filetypes.c").clangformat,
            },
            cpp = {
              require("formatter.filetypes.c").clangformat,
            },
            go = {
              require("formatter.filetypes.go").gofmt,
              require("formatter.filetypes.go").goimports,
            },
            ["*"] = {
              require("formatter.filetypes.any").remove_trailing_whitespace,
            },
          },
        })
      end,
    },
  }
end

return M
