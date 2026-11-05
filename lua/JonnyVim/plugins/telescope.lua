return {
	'nvim-telescope/telescope.nvim',
	version = '*',
	dependencies =
	{
		'nvim-lua/plenary.nvim',
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build =
			'cmake -S. -Bbuild -DCMAKE_POLICY_VERSION_MINIMUM=3.5 -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
		},
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("telescope").load_extension("fzf")
	end
}
