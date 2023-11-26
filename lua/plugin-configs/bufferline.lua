require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp",
		-- 留出nvim-tree的边栏空间
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
				separator = true,
			},
		},
		color_icons = true,
	},
})
