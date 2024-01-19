local M = {}

local icons = {
  Array = "", --  nf-cod-symbol_array 󰅨 nf-md-code_array
  Boolean = "", --  nf-cod-symbol_boolean
  BreakStatement = "", --  nf-cod-debug_step_over
  Call = "󰃷", -- 󰃷 nf-cod-call_incoming
  CaseStatement = "", --  nf-cod-arrow_right
  ContinueStatement = "", --  nf-cod-debug_continue_small
  Class = "", --  nf-cod-symbol_class
  Code = "", --  nf-cod-code ...
  Color = "", --  nf-cod-symbol_color
  Component = "", --  nf-oct-apps
  Constant = "", --  nf-cod-symbol_constant
  Constructor = "", --  nf-cod-gear
  Declaration = "󰙠", -- 󰙠 nf-md-shape_square_plus
  Delete = "󰧧", -- 󰧧 nf-md-delete_outline
  DoStatement = "", --  nf-cod-debug_rerun
  Enum = "", --  nf-cod-symbol_enum
  EnumMember = "", --  nf-cod-symbol_enum_member
  Event = "", --  nf-cod-symbol_event
  Field = "", --  nf-cod-symbol_field
  ForStatement = "", --  nf-cod-debug_restart
  Fragment = "󰐱", -- 󰐱 nf-md-puzzle
  Function = "󰊕", -- 󰊕 nf-md-function
  Header1 = "󰉫", -- 󰉫 nf-md-format_header_1
  Header2 = "󰉬", -- 󰉬 nf-md-format_header_2
  Header3 = "󰉭", -- 󰉭 nf-md-format_header_3
  Header4 = "󰉮", -- 󰉮 nf-md-format_header_4
  Header5 = "󰉯", -- 󰉯 nf-md-format_header_5
  Header6 = "󰉰", -- 󰉰 nf-md-format_header_6
  Identifier = "󰻾", -- 󰻾 nf-md-identifier
  IfStatement = "󰙁", -- 󰙁 nf-md-directions_fork
  Interface = "", --  nf-cod-symbol_interface
  Implementation = "󰅩", -- 󰅩 nf-md-code_braces
  Keyword = "", --  nf-cod-symbol_keyword
  List = "", --  nf-cod-list_ordered
  Log = "", --  nf-oct-log
  Lsp = "", --  nf-cod-server
  Macro = "󰫺", -- 󰫺 nf-md-alpha_m
  Method = "", --  nf-cod-symbol_method
  Module = "󰏓", -- 󰏓 nf-md-package
  Namespace = "", --  nf-cod-symbol_namespace
  Null = "󰟢", -- 󰟢 nf-md-null
  Number = "", --  nf-cod-symbol_numeric  nf-oct-number
  Object = "", --  nf-cod-primitive_square
  Operator = "", --  nf-cod-symbol_operator
  Package = "", --  nf-cod-package ...
  Pair = "󰅪", -- 󰅪 nf-md-code_brackets
  Parameter = "", --  nf-cod-symbol_parameter
  Property = "", --  nf-cod-symbol_property
  Reference = "", --  nf-cod-references
  Regex = "", --  nf-cod-regex
  Repeat = "", --  nf-cod-debug_restart
  Ruler = "", --  nf-cod-symbol_ruler
  Scope = "󰅩", -- 󰅩 nf-md-code_braces
  Snippet = "", --  nf-cod-symbol_snippet
  Specifier = "󱔁", -- 󱔁 nf-md-symbol
  StaticMethod = "", --  nf-cod-symbol_method
  Statement = "󰦨", -- 󰦨 nf-md-text
  String = "", --  nf-cod-symbol_string
  Struct = "", --  nf-cod-symbol_structure
  SwitchStatement = "󰙁", -- 󰙁 nf-md-directions_fork
  Text = "󰦨", -- 󰦨 nf-md-text
  Type = "󰀁", -- 󰀁 nf-md-vector_square
  TypeAlias = "󰀁", -- 󰀁 nf-md-vector_square
  TypeParameter = "󰀁", -- 󰀁 nf-md-vector_square
  Unit = "", --  nf-cod-circle
  Value = "󰎠", -- 󰎠 nf-md-numeric
  Variable = "", --  nf-cod-symbol_variable
  WhileStatement = "", --  nf-cod-debug_restart

  File = "", --  nf-cod-symbol_file
  Files = "", --  nf-cod-files
  FileSymlink = "", --  nf-cod-file_symlink_file
  FileTree = "󰙅", -- 󰙅 nf-md-file_tree 󱏒 nf-md-file_tree_outline
  Folder = "", --  nf-cod-folder ...

  -- Git =
  Added = "", --  nf-cod-diff_added  nf-oct-diff_added
  Ignored = "", --  nf-cod-diff_ignored  nf-oct-diff_ignored
  Modified = "", --  nf-cod-diff_modified  nf-oct-diff_modified
  Removed = "", --  nf-cod-diff_removed  nf-oct-diff_removed
  Renamed = "", --  nf-cod-diff_renamed  nf-oct-diff_renamed
  UnTracked = "󰝣", -- 󰝣 nf-md-square_outline

  Misc = "", --  nf-cod-symbol_misc
  Copilot = "", --  nf-oct-copilot
  Terminal = "", --  nf-dev-terminal

  Error = "", --  nf-cod-error
  Hint = "󰛩", -- 󱩎 nf-md-lightbulb_on_outline
  Info = "", --  nf-cod-info
  Question = "", --  nf-cod-question
  Warning = "", --  nf-cod-warning
}

function M.icon(add_space)
  if add_space then
    return setmetatable({}, {
      __index = function(_, key)
        return icons[key] .. " "
      end,
    })
  else
    return icons
  end
end

return M

