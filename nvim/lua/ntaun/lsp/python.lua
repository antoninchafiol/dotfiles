local lspconfig = require('lspconfig')
lspconfig.pyright.setup({
	on_attach = on_attach,  -- your keymaps & handlers
	capabilities = require('cmp_nvim_lsp').default_capabilities(),
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
			},
		},
	},
})


