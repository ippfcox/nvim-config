local M = {}

local icon = require("util.icon").icon(false)

M.config = {
  {
    "hedyhli/outline.nvim",
    config = function()
      require("outline").setup({
        symbols = {
          icons = {
            File = { icon = icon.File, hl = "Identifier" },
            Module = { icon = icon.Module, hl = "Include" },
            Namespace = { icon = icon.Namespace, hl = "Include" },
            Package = { icon = icon.Package, hl = "Include" },
            Class = { icon = icon.Class, hl = "Type" },
            Method = { icon = icon.Method, hl = "Function" },
            Property = { icon = icon.Property, hl = "Identifier" },
            Field = { icon = icon.Field, hl = "Identifier" },
            Constructor = { icon = icon.Constructor, hl = "Special" },
            Enum = { icon = icon.Enum, hl = "Type" },
            Interface = { icon = icon.Interface, hl = "Type" },
            Function = { icon = icon.Function, hl = "Function" },
            Variable = { icon = icon.Variable, hl = "Constant" },
            Constant = { icon = icon.Constant, hl = "Constant" },
            String = { icon = icon.String, hl = "String" },
            Number = { icon = icon.Number, hl = "Number" },
            Boolean = { icon = icon.Boolean, hl = "Boolean" },
            Array = { icon = icon.Array, hl = "Constant" },
            Object = { icon = icon.Object, hl = "Type" },
            Key = { icon = icon.Keyword, hl = "Type" },
            Null = { icon = icon.Null, hl = "Type" },
            EnumMember = { icon = icon.EnumMember, hl = "Identifier" },
            Struct = { icon = icon.Struct, hl = "Structure" },
            Event = { icon = icon.Event, hl = "Type" },
            Operator = { icon = icon.Operator, hl = "Identifier" },
            TypeParameter = { icon = icon.TypeParameter, hl = "Identifier" },
            Component = { icon = icon.Component, hl = "Function" },
            Fragment = { icon = icon.Fragment, hl = "Constant" },
            TypeAlias = { icon = icon.TypeAlias, hl = "Type" },
            Parameter = { icon = icon.Parameter, hl = "Identifier" },
            StaticMethod = { icon = icon.StaticMethod, hl = "Function" },
            Macro = { icon = icon.Macro, hl = "Function" },
          },
        },
      })
    end,
  },
}

return M
