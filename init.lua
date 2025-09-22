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

-- Turn on syntax highlighting
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  command = "TSEnable highlight"
})

vim.cmd([[colorscheme gruvbox]])

-- Turn off showmode (because lualine shows it)
vim.opt.showmode = false
