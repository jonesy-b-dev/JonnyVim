return {
	"GustavEikaas/easy-dotnet.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
	config = function()
		require("easy-dotnet").setup({
			terminal = function(path, action, args)
				-- Always use the same window ID for dotnet terminals
				local dotnet_win = vim.g.dotnet_terminal_win

				if dotnet_win and vim.api.nvim_win_is_valid(dotnet_win) then
					vim.api.nvim_set_current_win(dotnet_win)
					-- Create new terminal in same window
					vim.cmd.enew()
					vim.cmd.term(string.format("dotnet %s %s", action, args))
				else
					vim.cmd.vsplit()
					vim.g.dotnet_terminal_win = vim.api.nvim_get_current_win()
					vim.cmd.term(string.format("dotnet %s %s", action, args))
				end
			end,
		})
	end
}
