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

-- nvim-tree
vim.keymap.set("n", "<A-m>", ":NvimTreeToggle<CR>", opt("nvim-tree", "Toggle"))
vim.keymap.set("n", "<A-h>", "<C-w>h", opt("nvim-tree", "Move to Left Window"))
vim.keymap.set("n", "<A-j>", "<C-w>j", opt("nvim-tree", "Move to Down Window"))
vim.keymap.set("n", "<A-k>", "<C-w>k", opt("nvim-tree", "Move to Up Window"))
vim.keymap.set("n", "<A-l>", "<C-w>l", opt("nvim-tree", "Move to Right Window"))

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
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, opt("telescope", "Find Files"))
vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, opt("telescope", "Live Grep"))
vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, opt("telescope", "Buffers"))
vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, opt("telescope", "Help Tags"))

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

return plugin_keybindings
