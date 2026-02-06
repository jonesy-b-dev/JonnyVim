return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter")

		configs.setup({
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
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})

		-- Enable highlighting via autocmd
		vim.api.nvim_create_autocmd('FileType', {
			callback = function()
				vim.treesitter.start()
			end,
		})
	end
}
