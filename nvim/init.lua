require("ntaun")
require("mason").setup()
require("mason-null-ls").setup({
	ensure_installed = {"black", "rustfmt"},
	automatic_installation = true,
})
