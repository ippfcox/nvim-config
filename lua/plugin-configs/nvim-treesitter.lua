local M = {}
function M.config()
	require("nvim-treesitter.configs").setup({
		ensure_installed = {
			"vim",
			"lua",
			"c",
			"cpp",
			"cmake",
			"bash",
			"go",
			"gomod",
			"gosum",
			"json",
			"markdown",
		},
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<CR>",
				node_incremental = "<CR>",
				node_decremental = "<BS>",
				scope_incremental = "<TAB>",
			},
			indent = {
				enable = false,
			},
		},
	})
end

return M
