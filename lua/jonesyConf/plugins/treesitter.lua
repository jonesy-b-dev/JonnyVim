return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require('nvim-treesitter').setup({
			ensure_installed = {
				"cpp",
				"c_sharp",
				"vim",
				"vimdoc",
				"javascript",
				"html",
				"css",
				"lua",
			},
			auto_install = true,
			highlight = {
				enable = true,
			},
		})
	end
}
