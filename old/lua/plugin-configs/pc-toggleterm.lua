local M = {}

M.config = {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        float_opts = {
          border = "single",
        },
        -- nightly only feature
        winbar = {
          enabled = true,
          name_formatter = function(term)
            return term.name
          end,
        },
      })
    end,
  },
}

return M
