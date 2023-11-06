local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = { 'dockerls', 'jedi_language_server', 'gopls', 'tsserver', 'eslint', 'bashls', 'html', 'marksman', 'tflint', 'yamlls' },
	handlers = {
		lsp.default_setup,
		eslint = function()
			lspconfig.eslint.setup({
				on_attach = function(client, bufnr)
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						command = "EslistFixAll",
					})
				end,
			})
		end,
	},
})

