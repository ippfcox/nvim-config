local M = {}

local icon = require("util.icon").icon(false)

M.config = {
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup({
        preview_bg_highlight = "Pmenu",
        keymaps = require("keybindings").symbol_outline,
        symbols = {
          File = { icon = icon.File, hl = "@text.uri" },
          Module = { icon = icon.Module, hl = "@namespace" },
          Namespace = { icon = icon.Namespace, hl = "@namespace" },
          Package = { icon = icon.Package, hl = "@namespace" },
          Class = { icon = icon.Class, hl = "@type" },
          Method = { icon = icon.Method, hl = "@method" },
          Property = { icon = icon.Property, hl = "@method" },
          Field = { icon = icon.Field, hl = "@field" },
          Constructor = { icon = icon.Constructor, hl = "@constructor" },
          Enum = { icon = icon.Enum, hl = "@type" },
          Interface = { icon = icon.Interface, hl = "@type" },
          Function = { icon = icon.Function, hl = "@function" },
          Variable = { icon = icon.Variable, hl = "@constant" },
          Constant = { icon = icon.Constant, hl = "@constant" },
          String = { icon = icon.String, hl = "@string" },
          Number = { icon = icon.Number, hl = "@number" },
          Boolean = { icon = icon.Boolean, hl = "@boolean" },
          Array = { icon = icon.Array, hl = "@constant" },
          Object = { icon = icon.Object, hl = "@type" },
          Key = { icon = icon.Keyword, hl = "@type" },
          Null = { icon = icon.Null, hl = "@type" },
          EnumMember = { icon = icon.EnumMember, hl = "@field" },
          Struct = { icon = icon.Struct, hl = "@type" },
          Event = { icon = icon.Event, hl = "@type" },
          Operator = { icon = icon.Operator, hl = "@operator" },
          TypeParameter = { icon = icon.TypeParameter, hl = "@parameter" },
          Component = { icon = icon.Component, hl = "@function" },
          Fragment = { icon = icon.Fragment, hl = "@constant" },
        },
      })
    end,
  },
}

return M
