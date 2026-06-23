require("JonnyVim.core")
require("JonnyVim.lazy")
require("JonnyVim.after")

local function apply_default_options()
	-- Set (relative) lines
	vim.o.number = true
	vim.o.relativenumber = true

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
			local buftype = vim.bo[buf].buftype
			if buftype == "" then
				vim.wo[win].number = true
				vim.wo[win].relativenumber = true
			end
		end
	end,
})

-- Stop getting a new comment when creating new line from a comment
vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
	pattern = "*",
	callback = function()
		vim.opt_local.formatoptions:remove({ "r", "o" })
	end,
})
