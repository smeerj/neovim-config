return {
	"neovim/nvim-lspconfig",
	config = function()
		-- Basic LSP setup
		local lspconfig = require("lspconfig")

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local wk = require("which-key")

				wk.add({
					{
						buffer = args.buf,
						{ "gD", vim.lsp.buf.declaration, desc = "Go to declaration" },
						{ "gd", vim.lsp.buf.definition, desc = "Go to definition" },
						{ "gh", vim.lsp.buf.hover, desc = "Hover docs" },
						{ "gi", vim.lsp.buf.implementation, desc = "Go to implementation" },
						{ "go", vim.lsp.buf.open_float, desc = "Show code actions" },
						{ "gr", vim.lsp.buf.rename, desc = "Rename" },
						{ "gx", vim.lsp.buf.code_action, desc = "Show code actions" },
					},
				})
			end,
		})

		-- Example of configuring a language server
		lspconfig.pyright.setup({})
		lspconfig.ts_ls.setup({})
		lspconfig.gopls.setup({})
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
						checkThirdParty = false,
					},
					telemetry = {
						enable = false,
					},
					format = {
						enable = false,
					},
				},
			},
		})
		require("lspconfig").clangd.setup({})
		require("lspconfig").html.setup({})
		require("lspconfig").cssls.setup({})
	end,
}
