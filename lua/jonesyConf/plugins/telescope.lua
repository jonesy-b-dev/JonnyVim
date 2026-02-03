return {
	'nvim-telescope/telescope.nvim', version = '*',
	dependencies =
	{
		'nvim-lua/plenary.nvim',
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
	    require("telescope").load_extension("fzf")
    end
}
