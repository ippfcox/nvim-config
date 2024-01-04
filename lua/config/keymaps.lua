vim.g.mapleader = " "
vim.g.maplocalleader = " "

local plugin_keymaps = {}

local neotree_toggle = function()
    require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end

local neotree_toggle_git_status = function()
    require("neo-tree.command").execute({ source = "git_status", toggle = true })
end

local neotree_toggle_buffers = function ()
    require("neo-tree.command").execute({ source = "buffers", toggle = true })
end

vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "write file", noremap = true })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "quit a window", noremap = true })
vim.keymap.set("t", "<esc>", "<c-\\><c-n>", {desc = "TERMINAL to NORMAL", noremap = true})
vim.keymap.set("n", "<A-h>", "<C-w>h", {desc = "goto left window", noremap = true})
vim.keymap.set("n", "<A-j>", "<C-w>j", {desc = "goto lower window", noremap = true})
vim.keymap.set("n", "<A-k>", "<C-w>k", {desc = "goto upper window", noremap = true})
vim.keymap.set("n", "<A-l>", "<C-w>l", {desc = "goto right window", noremap = true})
vim.keymap.set("n", "<A-q>", "<C-w>q", {desc = "quit current window", noremap = true})
vim.keymap.set("n", "<A-s>", "<C-w>s", {desc = "split window", noremap = true})
vim.keymap.set("n", "<A-v>", "<C-w>v", {desc = "split window vertically", noremap = true})
vim.keymap.set("n", "<A-=>", "<C-w>+", {desc = "increase height", noremap = true})
vim.keymap.set("n", "<A-->", "<C-w>-", {desc = "decrease height", noremap = true})
vim.keymap.set("n", "<A-.>", "<C-w>>", {desc = "increase width", noremap = true})
vim.keymap.set("n", "<A-,>", "<C-w><", {desc = "decrease width", noremap = true})
-- neo-tree
vim.keymap.set("n", "<leader>ee", neotree_toggle, { desc = "neo-tree: toggle cwd", noremap = true, silent = true })
vim.keymap.set("n", "<leader>eg", neotree_toggle_git_status, { desc = "neo-tree: toggle cwd", noremap = true, silent = true })
vim.keymap.set("n", "<leader>eb", neotree_toggle_buffers, { desc = "neo-tree: toggle cwd", noremap = true, silent = true })
-- telescope
vim.keymap.set("n", "<leader>tf", require("telescope.builtin").find_files, {desc = "telescope: find files", noremap = true, silent = true})
vim.keymap.set("n", "<leader>tg", require("telescope.builtin").live_grep, {desc = "telescope: live grep", noremap = true, silent = true})
vim.keymap.set("n", "<leader>tb", require("telescope.builtin").buffers, {desc = "telescope: buffers", noremap = true, silent = true})
vim.keymap.set("n", "<leader>th", require("telescope.builtin").help_tags, {desc = "telescope: help tags", noremap = true, silent = true})
-- bufferline
vim.keymap.set("n", "<C-h>", "<cmd>BufferLineCyclePrev<cr>", {desc = "previous buffer", noremap = true})
vim.keymap.set("n", "<C-l>", "<cmd>BufferLineCycleNext<cr>", {desc = "next buffer", noremap = true})
vim.keymap.set("n", "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", {desc = "close other buffers", noremap = true})
vim.keymap.set("n", "<leader>bh", "<cmd>BufferLineCloseLeft<cr>", {desc = "close left buffers", noremap = true})
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseRight<cr>", {desc = "close other buffers", noremap = true})
vim.keymap.set("n", "<leader>bb", "<cmd>Bdelete<cr>", {desc = "close current buffer", noremap = true})
-- trouble
vim.keymap.set("n", "<leader>xx", require("trouble").toggle, {desc = "toggle trouble", noremap = true})
