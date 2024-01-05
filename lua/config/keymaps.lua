vim.g.mapleader = " "
vim.g.maplocalleader = " "

local plugin_keymaps = {}

local neotree_toggle = function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end

local neotree_toggle_git_status = function()
  require("neo-tree.command").execute({ source = "git_status", toggle = true })
end

local neotree_toggle_buffers = function()
  require("neo-tree.command").execute({ source = "buffers", toggle = true })
end

vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "write file", noremap = true })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "quit a window", noremap = true })
vim.keymap.set("t", "<esc>", "<c-\\><c-n>", { desc = "TERMINAL to NORMAL", noremap = true })
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
-- neo-tree
vim.keymap.set("n", "<leader>ee", neotree_toggle, { desc = "neo-tree: toggle cwd", noremap = true, silent = true })
vim.keymap.set("n", "<leader>eg", neotree_toggle_git_status, { desc = "neo-tree: toggle cwd", noremap = true, silent = true })
vim.keymap.set("n", "<leader>eb", neotree_toggle_buffers, { desc = "neo-tree: toggle cwd", noremap = true, silent = true })
-- telescope
vim.keymap.set("n", "<leader>tf", require("telescope.builtin").find_files, { desc = "telescope: find files", noremap = true, silent = true })
vim.keymap.set("n", "<leader>tg", require("telescope.builtin").live_grep, { desc = "telescope: live grep", noremap = true, silent = true })
vim.keymap.set("n", "<leader>tb", require("telescope.builtin").buffers, { desc = "telescope: buffers", noremap = true, silent = true })
vim.keymap.set("n", "<leader>th", require("telescope.builtin").help_tags, { desc = "telescope: help tags", noremap = true, silent = true })
-- bufferline
vim.keymap.set("n", "<C-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "previous buffer", noremap = true })
vim.keymap.set("n", "<C-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "next buffer", noremap = true })
vim.keymap.set("n", "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", { desc = "close other buffers", noremap = true })
vim.keymap.set("n", "<leader>bh", "<cmd>BufferLineCloseLeft<cr>", { desc = "close left buffers", noremap = true })
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseRight<cr>", { desc = "close other buffers", noremap = true })
vim.keymap.set("n", "<leader>bb", "<cmd>Bdelete<cr>", { desc = "close current buffer", noremap = true })
-- trouble
vim.keymap.set("n", "<leader>xx", require("trouble").toggle, { desc = "toggle trouble", noremap = true })
-- conform
vim.keymap.set("n", "<leader>f", require("conform").format, { desc = "format", noremap = true })

-- nvim-cmp
plugin_keymaps.cmp = function(cmp)
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

return plugin_keymaps
