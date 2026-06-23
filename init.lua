require("JonnyVim.core")
require("JonnyVim.lazy")
require("JonnyVim.after")

local function apply_default_options()
	-- Set (relative) lines
	vim.opt.number = true
	vim.opt.relativenumber = true

	-- Set tab spacing
	vim.opt.shiftwidth = 4
	vim.opt.tabstop = 4

	-- Set terminal colors
	vim.opt.tgc = false

	-- Set search options
	vim.opt.ignorecase = true
	vim.opt.smartcase = true     -- search matters if capital letter
	vim.opt.inccommand = "split" -- "for incsearch while sub
end

apply_default_options()

-- Color scheme
vim.cmd([[colorscheme gruvbox]])

-- Turn off showmode (because lualine shows it)
vim.opt.showmode = false

-- Add treesitter parser directory to runtimepath
vim.opt.runtimepath:append("~/.local/share/nvim/site")

--Auto remove trailing whitespace
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*" },
	command = [[%s/\s\+$//e]],
})

-- Re-apply defaults after loading a session to avoid stale option restores
vim.api.nvim_create_autocmd({ "User" }, {
	pattern = "SessionLoadPost",
	callback = function()
		apply_default_options()
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			local buf = vim.api.nvim_win_get_buf(win)
			local buftype = vim.api.nvim_get_option_value("buftype", { buf = buf })
			if buftype == "" then
				vim.api.nvim_set_option_value("number", true, { win = win })
				vim.api.nvim_set_option_value("relativenumber", true, { win = win })
			end
		end
	end,
})

-- Re-apply window UI options for restored/session windows
vim.api.nvim_create_autocmd({ "WinEnter" }, {
	pattern = "*",
	callback = function()
		if vim.bo.buftype ~= "" then
			return
		end
		vim.wo.number = true
		vim.wo.relativenumber = true
	end,
})

-- Stop getting a new comment when creating new line from a comment
vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
	pattern = "*",
	callback = function()
		vim.opt_local.formatoptions:remove({ "r", "o" })
	end,
})
