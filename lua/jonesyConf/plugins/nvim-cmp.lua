return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",				-- source for the text buffer
		"hrsh7th/cmp-path",					-- source for the file sytsem paths
		{
			"L3MON4D3/LuaSnip",				-- snippit engine
			version = "v2.*",
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip",			-- for autocompletion
		"rafamadriz/friendly-snippets",		-- usefull snippits
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		
		-- Load vscode style snippets from installed plugins
		require("luasnip.loaders.from_vscode").lazy_load()
		
		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},

			mapping = cmp.mapping.preset.insert({
        		["<S-Tab>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        		["<Tab>"] = cmp.mapping.select_next_item(), -- next suggestion
        		["<C-b>"] = cmp.mapping.scroll_docs(-4),
        		["<C-f>"] = cmp.mapping.scroll_docs(4),
        		["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
        		["<C-e>"] = cmp.mapping.abort(), -- close completion window
        		["<CR>"] = cmp.mapping.confirm({ select = false }),
      		}),
      		-- sources for autocompletion
      		sources = cmp.config.sources({
      		    { name = "nvim_lsp"},
      		    { name = "luasnip" }, -- snippets
      		    { name = "buffer" }, -- text within current buffer
      		    { name = "path" }, -- file system paths
      		}),
		})
	end,
}
