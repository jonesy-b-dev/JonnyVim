return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local keymap = vim.keymap

		local on_attach = function(client, bufnr)
			local opts = { noremap = true, silent = true }
			opts.buffer = bufnr

			-- Set keybinds

			-- Show LSP references is in trouble.nvim!
			-- Default lsp shortcuts are used, see https://neovim.io/doc/user/lsp/#_defaults

			opts.desc = "Go to declaration"
			keymap.set("n", "grd", vim.lsp.buf.declaration, opts) -- go to declaration

			opts.desc = "Show LSP definitions"
			keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

			opts.desc = "Show line diagnostics"
			keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

			opts.desc = "Go to previous diagnostic"
			keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

			opts.desc = "Go to next diagnostic"
			keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

			opts.desc = "Restart LSP"
			keymap.set("n", "<leader>rs", "<cmd>lsp restart<CR>", opts) -- mapping to restart lsp if necessary

			-- Format on save
			vim.api.nvim_create_autocmd("BufWritePre", {
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format()
				end,
			})
		end

		-- Change the diagnostics symbols in the sign column (gutter)
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "",
					[vim.diagnostic.severity.WARN] = "",
					[vim.diagnostic.severity.HINT] = "󰠠",
					[vim.diagnostic.severity.INFO] = "",
				},
			},
		})


		-- LANGUAGE SERVER CONFIGS

		-- Used to enable autocompletion (assign to every lsp server config)
		local capabilities = cmp_nvim_lsp.default_capabilities()

		-- LUA
		vim.lsp.config("lua_ls", {
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					-- Make lsp recognize "vim" global
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						-- Make lsp aware of runtime files
						library = {
							[vim.fn.expand("VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})
		vim.lsp.enable("lua_ls")

		-- Clangd
		vim.lsp.config("clangd", {
			capabilities = capabilities,
			on_attach = on_attach,
		})
		vim.lsp.enable("clangd")

		--css
		vim.lsp.config("cssls", {
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = { 'css', 'scss', 'vue' }
		})
		vim.lsp.enable("cssls")

		--TypeScript
		vim.lsp.config("ts_ls", {
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = { 'ts', 'js', 'vue' }
		})
		vim.lsp.enable("ts_ls")
	end,
}
