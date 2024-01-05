return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
    },
    config = function()
      vim.o.background = "dark"
      vim.o.termguicolors = true
      vim.cmd.colorscheme("tokyonight-moon")
    end,
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {
      input = {
        border = "single",
      },
      nui = {
        border = "single",
      },
      builtin = {
        border = "single",
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "famiu/bufdelete.nvim" },
    event = "VeryLazy",
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        -- 留出nvim-tree的边栏空间
        offsets = {
          {
            filetype = "neo-tree",
            text = "GOOD GOOD STUDY, DAY DAY UP",
            highlight = "Directory",
            text_align = "center",
            separator = false,
          },
          {
            filetype = "NvimTree",
            text = " File Explorer",
            highlight = "Directory",
            text_align = "center",
            separator = false,
          },
        },
        color_icons = true,
        separator_style = "slant",
        hover = {
          enabled = true,
          delay = 0,
          reveal = { "close" },
        },
        close_command = function(bufnum)
          require("bufdelete").bufdelete(bufnum, true)
        end,
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_d = { "encoding", "fileformat", "filetype" },
        lualine_e = { "progress" },
        lualine_f = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_d = { "location" },
        lualine_e = {},
        lualine_f = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    opts = {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
    main = "ibl",
  },
  {
    "echasnovski/mini.indentscope",
    event = "VeryLazy",
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  },
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    event = "VeryLazy",
    opts = {
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
      -- should config border to single
      views = {
        cmdline_popup = { border = { style = "single" } },
        popupmenu = { border = { style = "single" } },
        -- messages = { border = { style = "single" } },
        notify = { border = { style = "single" } },
        popup = { border = { style = "single" } },
        hover = { border = { style = "single" } },
      },
    },
  },
  -- dashboard
}
