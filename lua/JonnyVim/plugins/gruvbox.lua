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
			NormalFloat                = { bg = '#3b3b38' },
			TelescopeBorder            = { fg = "#a89984" }, -- Telescope border

			["@punctuation.bracket"]   = { link = "GruvboxFg1" }, -- whatever color you want
			["@punctuation.delimiter"] = { link = "GruvboxFg1" },
			["@punctuation.special"]   = { link = "GruvboxFg1" },
			Operator                   = { link = "GruvboxFg1" },
			Delimiter                  = { link = "GruvboxFg1" },
			Function                   = { link = "GruvboxOrange" },
			--Identifier                 = { fg = "#8db1c9" }, -- replace with your fg1 value
			["@lsp.type.variable"]     = { fg = "#c5d4b8" },
			--Comment                    = { link = "GruvboxFg1" },
			Keyword                    = { fg = "#db5c4d" },
			["@keyword.conditional"]   = { fg = "#db5c4d" },
			Macro                      = { link = "GruvboxPurple" },
			Type                       = { link = "GruvboxFg1" },
		},
		dim_inactive = false,
		transparent_mode = true,
	},
	config = function(_, opts)
		require("gruvbox").setup(opts)
		vim.cmd("colorscheme gruvbox")
	end
}
