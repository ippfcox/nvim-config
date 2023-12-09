local M = {}

local icon_kind = require("util.icon").get("kind", false)

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
          Text = icon_kind.Text,
          Method = icon_kind.Method,
          Function = icon_kind.Function,
          Constructor = icon_kind.Constructor,
          Field = icon_kind.Field,
          Variable = icon_kind.Variable,
          Class = icon_kind.Class,
          Interface = icon_kind.Interface,
          Module = icon_kind.Module,
          Property = icon_kind.Property,
          Unit = icon_kind.Unit,
          Value = icon_kind.Value,
          Enum = icon_kind.Enum,
          Keyword = icon_kind.Keyword,
          Snippet = icon_kind.Snippet,
          Color = icon_kind.Color,
          File = icon_kind.File,
          Reference = icon_kind.Reference,
          Folder = icon_kind.Folder,
          EnumMember = icon_kind.EnumMember,
          Constant = icon_kind.Constant,
          Struct = icon_kind.Struct,
          Event = icon_kind.Event,
          Operator = icon_kind.Operator,
          TypeParameter = icon_kind.TypeParameter,
        },
      })
    end,
  },
}

return M
