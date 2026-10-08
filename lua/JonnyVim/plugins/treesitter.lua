return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		-- Ensure parsers are installed (enable 1 time after new nvim install to quickly install needed parsers)
		--vim.cmd("TSInstall c cpp fish php razor query typescript vue c_sharp vim vimdoc javascript html css lua markdown markdown_inline")

		-- Enable highlighting
		vim.api.nvim_create_autocmd('FileType', {
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})
	end
}
