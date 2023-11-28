local M = {}

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

function M.config()
	require("nvim-tree").setup({
		sort = {
			sorter = "case_sensitive",
		},
		view = {
			width = 30,
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			-- dotfiles = true,
		},
		on_attach = require("keybindings").tree,
	})
end

return M
