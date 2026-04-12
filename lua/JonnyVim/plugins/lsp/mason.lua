return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim", --Acts like the bridge between mason and nvim-lsp
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup({
			ui = {
				icons = {
					package_installed    = "",
					package_pending      = "",
					packaged_uninstalled = "",
				}
			}
		})

		mason_lspconfig.setup({
			-- List of lsp servers for mason to install
			ensure_installed = {
				"clangd",
				"lua_ls"
			},
			automatic_installation = true,
		})
	end,
}
