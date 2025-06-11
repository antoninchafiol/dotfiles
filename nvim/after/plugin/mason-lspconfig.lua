require("mason-lspconfig").setup({
	ensure_installed = {
		"pyright",
		"rust_analyzer",
		"lua_ls",
	},
	automatic_installation = true,
})
