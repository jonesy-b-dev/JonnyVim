return {
<<<<<<< HEAD
  "akinsho/bufferline.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- Optional but recommended for best colors in bufferline:
    -- If your terminal supports truecolor, set this to true.
    -- You currently have it disabled in init.lua via `vim.opt.tgc = false`.
    -- You can override here or in your core settings.
    vim.opt.termguicolors = true

    require("bufferline").setup({
      options = {
        mode = "buffers",           -- or "tabs"
        separator_style = "thin",  -- "thin", "thick", or "slant"
       	show_buffer_close_icons = false,
		style_preset = {
			style_preset = require("bufferline").style_preset.no_italic,
		},
        offsets = {
          { filetype = "NvimTree", text = "Explorer", text_align = "left", separator = true },
        },
      },
    })

    -- Keymaps (tweak to taste)
    local map = vim.keymap.set
    map("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
    map("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
    map("n", "<leader>bp", "<cmd>BufferLinePick<CR>", { desc = "Pick buffer" })
    map("n", "<leader>bc", "<cmd>BufferLinePickClose<CR>", { desc = "Pick and close buffer" })
    map("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", { desc = "Close other buffers" })
  end,
=======
	"akinsho/bufferline.nvim",
	version = "*",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- Optional but recommended for best colors in bufferline:
		-- If your terminal supports truecolor, set this to true.
		-- You currently have it disabled in init.lua via `vim.opt.tgc = false`.
		-- You can override here or in your core settings.
		vim.opt.termguicolors = true

		require("bufferline").setup({
			options = {
				mode = "buffers", -- or "tabs"
				separator_style = "thin", -- "thin", "thick", or "slant"
				show_buffer_close_icons = false,
				style_preset = {
					style_preset = require("bufferline").style_preset.no_italic,
				},
				offsets = {
					{ filetype = "NvimTree", text = "Explorer", text_align = "left", separator = true },
				},
			},
		})
	end,
>>>>>>> 4839aa0 ([nvim] Add bufferline.nvim and fix switch buffer keybinds)
}
