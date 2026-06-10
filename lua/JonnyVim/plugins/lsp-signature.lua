return {
	"ray-x/lsp_signature.nvim",
	event = "InsertEnter",
	opts = {
		doc_lines = 0,
		auto_close_after = 3,
		handler_opts = {
			border = "none", -- removes border entirely, saves ~2 lines of space
		},
		floating_window_off_y = 2,
		hint_prefix = "",
	},
}
