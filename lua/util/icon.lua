local M = {}

local data = {
  kind = {
    Class = "", --  nf-cod-symbol_class
    Color = "", --  nf-cod-symbol_color
    Constant = "", --  nf-cod-symbol_constant
    Constructor = "",
    Enum = "", --  nf-cod-symbol_enum
    EnumMember = "", --  nf-cod-symbol_enum_member
    Event = "", --  nf-cod-symbol_event
    Field = "", --  nf-cod-symbol_field
    File = "", --  nf-cod-file
    Folder = "", --  nf-cod-folder,  nf-custom-folder
    Fragment = "",
    Function = "",
    Interface = "", --  nf-cod-symbol_interface
    Implementation = "",
    Keyword = "", --  nf-cod-symbol_keyword,  nf-cod-symbol_key
    Method = "", --  nf-cod-symbol_method
    Module = "",
    Namespace = "", --  nf-cod-symbol_namespace
    Number = "", --  nf-cod-symbol_numeric
    Operator = "", --  nf-cod-symbol_operator
    Package = "", --  nf-cod-package
    Property = "", --  nf-cod-symbol_property
    Reference = "", --  nf-cod-references
    Snippet = "", --  nf-cod-symbol_snippet
    Struct = "", --  nf-cod-symbol_structure
    Text = "", --  nf-cod-symbol_string
    TypeParameter = "󰅲",
    Undefined = "",
    Unit = "",
    Value = "󰎠",
    Variable = "", --  nf-cod-symbol_variable
    -- ccls-specific icons.
    TypeAlias = "",
    Parameter = "", --  nf-cod-symbol_parameter
    StaticMethod = "",
    Macro = "",
  },
  type = {
    Array = "", --  nf-cod-symbol_array
    Boolean = "", --  nf-cod-symbol_boolean
    Null = "󰟢",
    Number = "", --  nf-cod-symbol_numeric
    Object = "󰅩",
    String = "", --  nf-cod-symbol_string
  },
  documents = {
    Default = "",
    File = "", --  nf-cod-file
    Files = "", --  nf-cod-files
    FileTree = "󰙅",
    Import = "", --  nf-fae-file_import
    Symlink = "", --  nf-cod-file_symlink_file,  nf-cod-file_symlink_file
  },
  git = {
    Add = "",
    Branch = "",
    Diff = "",
    Git = "", --  nf-dev-git
    Ignore = "",
    Mod = "M", --  nf-cod-diff_modified
    Mod_alt = "",
    Remove = "",
    Rename = "",
    Repo = "", --  nf-cod-repo
    Unmerged = "󰘬",
    Untracked = "󰞋",
    Unstaged = "",
    Staged = "",
    Conflict = "",
  },
  ui = {
    Accepted = "",
    ArrowClosed = "",
    ArrowOpen = "",
    BigCircle = "",
    BigUnfilledCircle = "",
    Bookrark = "", --  nf-cod-bookmark
    Bug = "",
    Calendar = "",
    Check = "󰄳",
    ChevronRight = "",
    Circle = "",
    Close = "󰅖",
    Close_alt = "",
    CloudDownload = "",
    Comment = "󰅺",
    CodeAction = "󰌵",
    Dashboard = "",
    Emoji = "󰱫",
    EmptyFolder = "",
    EmptyFolderOpen = "",
    File = "󰈤",
    Fire = "",
    Folder = "",
    FolderOpen = "",
    FolderWithHeart = "󱃪",
    Gear = "",
    History = "󰄉",
    Incoming = "󰏷",
    Indicator = "",
    Keyboard = "",
    Left = "",
    List = "",
    Square = "",
    SymlinkFolder = "",
    Lock = "󰍁",
    Modified = "✥",
    Modified_alt = "",
    NewFile = "",
    Newspaper = "",
    Note = "󰍨",
    Outgoing = "󰏻",
    Package = "",
    Pencil = "󰏫",
    Perf = "󰅒",
    Play = "",
    Project = "",
    Right = "",
    RootFolderOpened = "",
    Search = "󰍉",
    Separator = "",
    DoubleSeparator = "󰄾",
    SignIn = "",
    SignOut = "",
    Sort = "",
    Spell = "󰓆",
    Symlink = "",
    Tab = "",
    Table = "",
    Telescope = "",
  },
  diagnostics = {
    Error = "", --  nf-cod-error
    Warning = "", --  nf-cod-warning
    Information = "", --  nf-cod-info
    Question = "", --  nf-cod-question
    Hint = "󰌵",
  },
  misc = {
    Campass = "󰀹",
    Code = "",
    Gavel = "",
    Glass = "󰂖",
    NoActiveLsp = "󱚧",
    PyEnv = "󰢩",
    Squirrel = "",
    Tag = "",
    Tree = "",
    Watch = "",
    Lego = "",
    LspAvailable = "󱜙",
    Vbar = "│",
    Add = "+",
    Added = "",
    Ghost = "󰊠",
    ManUp = "",
    Neovim = "",
    Vim = "",
  },
  cmp = {
    Codeium = "",
    TabNine = "",
    Copilot = "",
    Copilot_alt = "",
    -- Add source-specific icons here
    buffer = "",
    cmp_tabnine = "",
    codeium = "",
    copilot = "",
    copilot_alt = "",
    latex_symbols = "",
    luasnip = "󰃐",
    nvim_lsp = "",
    nvim_lua = "",
    orgmode = "",
    path = "",
    spell = "󰓆",
    tmux = "",
    treesitter = "",
    undefined = "",
  },
  dap = {
    Breakpoint = "󰝥",
    BreakpointCondition = "󰟃",
    BreakpointRejected = "",
    LogPoint = "",
    Pause = "",
    Play = "",
    RunLast = "↻",
    StepBack = "",
    StepInto = "󰆹",
    StepOut = "󰆸",
    StepOver = "󰆷",
    Stopped = "",
    Terminate = "󰝤",
  },
}

---Get a specific icon set.
---@param category "kind"|"type"|"documents"|"git"|"ui"|"diagnostics"|"misc"|"cmp"|"dap"
---@param add_space? boolean @Add trailing space after the icon.
function M.get(category, add_space)
  if add_space then
    return setmetatable({}, {
      __index = function(_, key)
        return data[category][key] .. " "
      end,
    })
  else
    return data[category]
  end
end

return M
