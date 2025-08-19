return {
	"coffebar/neovim-project",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"Shatur/neovim-session-manager",
		"nvim-telescope/telescope.nvim",
	},
	opts = {
		-- List of project roots (glob patterns)
		projects = {
			"~/dev/asm/*",
			"~/dev/cpp/*",
			"~/dev/c/*",
			"~/dev/hacking/*",
			"~/dev/web/*",
			"~/dev/other/*",
			"~/.config/*",
		},

		-- Session options (handled via session-manager)
		session = {
			autosave = true,
			autoload = false,
			allowed_dirs = nil,
		},

		picker = {
			type = "telescope",
		},
	},

	config = function(_, opts)
		require("neovim-project").setup(opts)
--
--		-- Optional: configure session-manager directly
--		local Path = require("plenary.path")
--		local config = require("session_manager.config")
--
--		require("session_manager").setup({
--			sessions_dir = Path:new(vim.fn.stdpath("data"), "sessions"), -- session files location
--			path_replacer = "__",       -- replace '/' with '__'
--			colon_replacer = "++",      -- replace ':' with '++'
--			autosave_last_session = false,
--			autosave_ignore_not_normal = true, -- only save if you’re not in e.g. diff mode
--			autosave_only_in_session = false,  -- save everywhere, not just projects
--			max_path_length = 80,              -- shorten long session names
--		})
	end,
}
