local M = {}

M.config = {
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        log_level = vim.log.levels.DEBUG,
        formatters_by_ft = {
          lua = { "stylua" },
          go = { "goimports", "gofmt" },
          c = { "clang_format" },
          h = { "clang_format" },
          cpp = { "clang_format" },
          hpp = { "clang_format" },
          cc = { "clang_format" },
          hh = { "clang_format" },
          sh = { "shfmt" },
          html = { "htmlbeautifier" },
          htm = { "htmlbeautifier" },
        },
      })
    end,
  },
}

return M
