local M = {}

local icon = require("util.icon").icon(false)

M.config = {
  {
    "dstein64/nvim-scrollview",
    config = function()
      require("scrollview").setup({
        signs_on_startup = { "all" },
        diagnostics_error_symbol = icon.Error,
        diagnostics_warn_symbol = icon.Warning,
        diagnostics_info_symbol = icon.Information,
        diagnostics_hint_symbol = icon.Hint,
      })
    end,
  },
}

return M
