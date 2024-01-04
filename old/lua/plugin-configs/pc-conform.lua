local M = {}

M.config = {
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          go = { "goimports", "gofmt" },
          c = { "clang_format" },
          cpp = { "clang_format" },
          sh = { "shfmt" },
          html = { "prettier" },
          css = { "prettier" },
          javascript = { "prettier" },
          typescript = { "prettier" },
        },
      })
    end,
  },
}

return M
