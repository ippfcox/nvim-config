vim.g.mapleader = " "
vim.g.maplocalleader = " "

local function opt(plugin_name, desc)
  return { desc = plugin_name .. ": " .. desc, noremap = true, silent = true }
end
local plugin_keybindings = {}

-- basic
vim.keymap.set("n", ";", ":", opt("basic", ":"))
vim.keymap.set("n", "<leader>w", ":w<CR>", opt("basic", "Save"))
vim.keymap.set("n", "<leader>q", ":q<CR>", opt("basic", "Quit"))
vim.keymap.set("t", "<ESC>", "<c-\\><c-n>", opt("basic", "Terminal to Normal"))
vim.keymap.set("n", "<A-h>", "<C-w>h", opt("basic", "Move to Left Window"))
vim.keymap.set("n", "<A-j>", "<C-w>j", opt("basic", "Move to Down Window"))
vim.keymap.set("n", "<A-k>", "<C-w>k", opt("basic", "Move to Up Window"))
vim.keymap.set("n", "<A-l>", "<C-w>l", opt("basic", "Move to Right Window"))

-- lsp
vim.keymap.set("n", "<leader>gh", vim.lsp.buf.hover, opt("lsp", "Hover"))
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opt("lsp", "Go to Definition"))
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opt("lsp", "Go to Declaration"))
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, opt("lsp", "Go to Implementation"))
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opt("lsp", "Go to References"))
vim.keymap.set("n", "<leader>gn", vim.lsp.buf.rename, opt("lsp", "Rename"))
vim.keymap.set("n", "<leader>ga", vim.lsp.buf.add_workspace_folder, opt("lsp", "Add Workspace Folder"))
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.remove_workspace_folder, opt("lsp", "Remove Workspace Folder"))
vim.keymap.set("n", "<leader>gl", function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, opt("lsp", "Rename"))

-- nvim-tree
vim.keymap.set("n", "<A-m>", require("nvim-tree.api").tree.toggle, opt("nvim-tree", "Toggle"))

-- bufferline
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt("bufferline", "Move to Left Buffer"))
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt("bufferline", "Move to Right Buffer"))
-- vim.keymap.set('n', '', ':BufferLineCloseOthers<CR>', opt("bufferline", "Close All Buffer"))
vim.keymap.set("n", "<leader>c", ":Bdelete<CR>", opt("bufferline", "Close Current Buffer"))

-- formatter
vim.keymap.set("n", "<Leader>f", ":Format<CR>", opt("formatter", "Format"))
vim.keymap.set("n", "<Leader>F", ":FormatWrite<CR>", opt("formatter", "Format and Write"))

-- trouble
vim.keymap.set("n", "<leader>xx", require("trouble").toggle, opt("trouble", "Toggle Trouble"))

-- telescope
vim.keymap.set("n", "<leader>tf", require("telescope.builtin").find_files, opt("telescope", "Find Files"))
vim.keymap.set("n", "<leader>tg", require("telescope.builtin").live_grep, opt("telescope", "Live Grep"))
vim.keymap.set("n", "<leader>tb", require("telescope.builtin").buffers, opt("telescope", "Buffers"))
vim.keymap.set("n", "<leader>th", require("telescope.builtin").help_tags, opt("telescope", "Help Tags"))

-- toggleterm
vim.keymap.set("n", "<leader>``", ":ToggleTerm direction=horizontal<CR>", opt("toggleterm", "Toggle Terminal"))
vim.keymap.set("n", "<leader>`f", ":ToggleTerm direction=float<CR>", opt("toggleterm", "Toggle Terminal"))

-- nvim-cmp
plugin_keybindings.cmp = function(cmp)
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
end

-- nvim-tree
plugin_keybindings.tree = function(bufnr)
  local api = require("nvim-tree.api")
  api.config.mappings.default_on_attach(bufnr)

  -- vim.keymap.set("n", "!", api.tree.toggle_help, opt("Help"))
end

-- comment
plugin_keybindings.comment = {
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
}

return plugin_keybindings
