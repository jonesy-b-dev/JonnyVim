require("JonnyVim.core")
require("JonnyVim.lazy")
require("JonnyVim.after")

-- Set (relative) lines
vim.wo.number = true
vim.wo.relativenumber = true

-- Set tab spacing
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Set terminal colors
vim.opt.tgc = false

-- Set search options
vim.opt.ignorecase = true
vim.opt.smartcase = true     -- search matters if capital letter
vim.opt.inccommand = "split" -- "for incsearch while sub

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

-- Stop getting a new comment when creating new line from a comment
vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
	pattern = "*",
	callback = function()
		vim.opt_local.formatoptions:remove({ "r", "o" })
	end,
})
