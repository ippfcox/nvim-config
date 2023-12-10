local M = {}

local icon = require("util.icon").icon(false)

function M.toggle_right()
  return require("aerial").toggle({ focus = true, direction = "right" })
end

M.config = {
  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("aerial").setup({
        filter_kind = false,
        icons = {
          Text = icon.Text,
          Method = icon.Method,
          Function = icon.Function,
          Constructor = icon.Constructor,
          Field = icon.Field,
          Variable = icon.Variable,
          Class = icon.Class,
          Interface = icon.Interface,
          Module = icon.Module,
          Property = icon.Property,
          Unit = icon.Unit,
          Value = icon.Value,
          Enum = icon.Enum,
          Keyword = icon.Keyword,
          Snippet = icon.Snippet,
          Color = icon.Color,
          File = icon.File,
          Reference = icon.Reference,
          Folder = icon.Folder,
          EnumMember = icon.EnumMember,
          Constant = icon.Constant,
          Struct = icon.Struct,
          Event = icon.Event,
          Operator = icon.Operator,
          TypeParameter = icon.TypeParameter,
        },
      })
    end,
  },
}

return M
