local M = {}

local icon_diagnostics = require("util.icon").get("diagnostics", false)

M.config = {
  {
    "dstein64/nvim-scrollview",
    config = function()
      require("scrollview").setup({
        signs_on_startup = { "all" },
        diagnostics_error_symbol = icon_diagnostics.Error,
        diagnostics_warn_symbol = icon_diagnostics.Warning,
        diagnostics_info_symbol = icon_diagnostics.Information,
        diagnostics_hint_symbol = icon_diagnostics.Hint,
      })
    end,
  },
}

return M
