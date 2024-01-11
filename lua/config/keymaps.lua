vim.g.mapleader = " "
vim.g.maplocalleader = " "

local neotree = {
  toggle = function()
    return require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
  end,
  toggle_git_status = function()
    return require("neo-tree.command").execute({ source = "git_status", toggle = true })
  end,
  toggle_buffers = function()
    return require("neo-tree.command").execute({ source = "buffers", toggle = true })
  end,
}

local telescope = {
  find_files = function()
    return require("telescope.builtin").find_files()
  end,
  live_grep = function()
    return require("telescope.builtin").live_grep()
  end,
  buffers = function()
    return require("telescope.builtin").buffers()
  end,
  help_tags = function()
    return require("telescope.builtin").help_tags()
  end,
}

local trouble = {
  toggle = function()
    return require("trouble").toggle()
  end,
}

local conform = {
  format = function()
    return require("conform").format()
  end,
}

local aerial = {
  toggle = function()
    return require("aerial").toggle({ focus = true, direction = "right" })
  end,
}

-- builtin
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "write file", noremap = true })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "quit a window", noremap = true })
vim.keymap.set("t", "<esc>", "<c-\\><c-n>", { desc = "TERMINAL to NORMAL", noremap = true })
vim.keymap.set("n", "<esc>", "<cmd>noh<cr>", { desc = "clear search highlight", noremap = true })
vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "goto left window", noremap = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "goto lower window", noremap = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "goto upper window", noremap = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "goto right window", noremap = true })
vim.keymap.set("n", "<A-q>", "<C-w>q", { desc = "quit current window", noremap = true })
vim.keymap.set("n", "<A-s>", "<C-w>s", { desc = "split window", noremap = true })
vim.keymap.set("n", "<A-v>", "<C-w>v", { desc = "split window vertically", noremap = true })
vim.keymap.set("n", "<A-=>", "<C-w>+", { desc = "increase height", noremap = true })
vim.keymap.set("n", "<A-->", "<C-w>-", { desc = "decrease height", noremap = true })
vim.keymap.set("n", "<A-.>", "<C-w>>", { desc = "increase width", noremap = true })
vim.keymap.set("n", "<A-,>", "<C-w><", { desc = "decrease width", noremap = true })
-- lsp
vim.keymap.set("n", "<leader>gh", vim.lsp.buf.hover, { desc = "lsp: hover", noremap = true })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "lsp: definition", noremap = true })
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "lsp: declaration", noremap = true })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "lsp: implementation", noremap = true })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "lsp: references", noremap = true })
vim.keymap.set("n", "<leader>gn", vim.lsp.buf.rename, { desc = "lsp: rename", noremap = true })
vim.keymap.set("n", "<leader>gA", vim.lsp.buf.add_workspace_folder, { desc = "lsp: add_workspace_folder", noremap = true })
vim.keymap.set("n", "<leader>gR", vim.lsp.buf.remove_workspace_folder, { desc = "lsp: remove_workspace_folder", noremap = true })
-- vim.keymap.set("n", "<leader>gL", require("plugin-configs.pc-lsp").list_workspace_folders, { desc = "lsp: ", noremap = true })
vim.keymap.set("n", "<leader>gx", vim.diagnostic.open_float, { desc = "lsp: open_float", noremap = true })
vim.keymap.set("n", "<leader>gj", vim.diagnostic.goto_next, { desc = "lsp: goto_next", noremap = true })
vim.keymap.set("n", "<leader>gk", vim.diagnostic.goto_prev, { desc = "lsp: goto_prev", noremap = true })

-- neo-tree
vim.keymap.set("n", "<leader>ee", neotree.toggle, { desc = "neo-tree: toggle cwd", noremap = true, silent = true })
vim.keymap.set("n", "<leader>eg", neotree.toggle_git_status, { desc = "neo-tree: toggle cwd", noremap = true, silent = true })
vim.keymap.set("n", "<leader>eb", neotree.toggle_buffers, { desc = "neo-tree: toggle cwd", noremap = true, silent = true })
-- telescope
vim.keymap.set("n", "<leader>tf", telescope.find_files, { desc = "telescope: find files", noremap = true, silent = true })
vim.keymap.set("n", "<leader>tg", telescope.live_grep, { desc = "telescope: live grep", noremap = true, silent = true })
vim.keymap.set("n", "<leader>tb", telescope.buffers, { desc = "telescope: buffers", noremap = true, silent = true })
vim.keymap.set("n", "<leader>th", telescope.help_tags, { desc = "telescope: help tags", noremap = true, silent = true })
-- bufferline
vim.keymap.set("n", "<C-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "previous buffer", noremap = true })
vim.keymap.set("n", "<C-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "next buffer", noremap = true })
vim.keymap.set("n", "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", { desc = "close other buffers", noremap = true })
vim.keymap.set("n", "<leader>bh", "<cmd>BufferLineCloseLeft<cr>", { desc = "close left buffers", noremap = true })
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseRight<cr>", { desc = "close other buffers", noremap = true })
vim.keymap.set("n", "<leader>bb", "<cmd>Bdelete<cr>", { desc = "close current buffer", noremap = true })
-- trouble
vim.keymap.set("n", "<leader>xx", trouble.toggle, { desc = "trouble: toggle", noremap = true })
-- conform
vim.keymap.set("n", "<leader>f", conform.format, { desc = "conform: format", noremap = true })
-- aerial
vim.keymap.set("n", "<leader>aa", aerial.toggle, { desc = "aerial: toggle", noremap = true })
-- toggleterm
vim.keymap.set("n", "<leader>``", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "toggletrem: toggle horizontal terminal", noremap = true })
vim.keymap.set("n", "<leader><Esc><Esc>", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "toggletrem: toggle horizontal terminal", noremap = true })
vim.keymap.set("n", "<leader>`f", "<cmd>ToggleTerm direction=float<cr>", { desc = "toggleterm: toggle float terminal", noremap = true })
vim.keymap.set("n", "<leader><Esc>f", "<cmd>ToggleTerm direction=float<cr>", { desc = "toggleterm: toggle float terminal", noremap = true })

local plugin_keymaps = {
  -- nvim-cmp
  cmp = function(cmp)
    return {
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function()
        if cmp.visible() then
          cmp.select_prev_item()
        end
      end, { "i", "s" }),
      ["<C-k>"] = cmp.mapping.select_prev_item(),
      ["<C-j>"] = cmp.mapping.select_next_item(),
      ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
      ["<A-,>"] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close() }),
      ["<CR>"] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }),
      ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
      ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
    }
  end,
  -- Comment.nvim
  comment = {
    toggler = {
      line = "<leader>//",
      block = "<leader>/b",
    },
    opleader = {
      line = "<leader>//",
      block = "<leader>/b",
    },
    extra = {
      above = "<leader>/O",
      below = "<leader>/o",
      eol = "<leader>/A",
    },
  },
}

return plugin_keymaps
