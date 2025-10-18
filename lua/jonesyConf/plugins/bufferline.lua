return {
	"akinsho/bufferline.nvim",
	version = "*",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		vim.opt.termguicolors = true

		require("bufferline").setup({
			options = {
				mode = "buffers", -- or "tabs"
				separator_style = "thin", -- "thin", "thick", or "slant"
				show_buffer_close_icons = false,
				style_preset = {
					style_preset = require("bufferline").style_preset.no_italic,
				},
				offsets = {
					{ filetype = "NvimTree", text = "Explorer", text_align = "left", separator = true },
				},
			},
		})
	end,
}
