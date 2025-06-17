return
{
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function ()
	  require("oil").setup({
		  default_file_explorer = true,
		  view_options = {
		    show_hidden = true,
    		-- This function defines what is considered a "hidden" file
    		is_hidden_file = function(name, bufnr)
      			return vim.startswith(name, ".")
    		end,
		  }
	  })
  end,
}
