return {
	'nvim-telescope/telescope.nvim', tag = '0.1.7',
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
