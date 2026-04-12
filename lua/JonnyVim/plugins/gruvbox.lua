return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = {
		-- Your plugin-specific options here
		terminal_colors = true,
		undercurl = true,
		underline = true,
		bold = true,
		italic = {
			strings = true,
			emphasis = true,
			comments = true,
			operators = false,
			folds = true,
		},
		strikethrough = true,
		invert_selection = false,
		invert_signs = false,
		invert_tabline = false,
		invert_intend_guides = false,
		inverse = true, -- invert background for search, diffs, statuslines and errors
		contrast = "", -- can be "hard", "soft" or empty string
		palette_overrides = {

		},
		overrides = {
			NormalFloat = { bg = '#3b3b38' },
			TelescopeBorder = { fg = "#a89984" }, -- Telescope border
		},
		dim_inactive = false,
		transparent_mode = true,
	},
	config = function(_, opts)
		require("gruvbox").setup(opts)
		vim.cmd("colorscheme gruvbox")
	end
}
