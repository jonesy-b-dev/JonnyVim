require("jonesyConf.core")
require("jonesyConf.lazy")
require("jonesyConf.after")

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
vim.opt.smartcase = true -- search matters if capital letter
vim.opt.inccommand = "split" -- "for incsearch while sub

-- Color scheme
vim.cmd([[colorscheme gruvbox]])

-- Turn off showmode (because lualine shows it)
vim.opt.showmode = false

-- Add treesitter parser directory to runtimepath
vim.opt.runtimepath:append("~/.local/share/nvim/site")
