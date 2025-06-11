local null_ls = require('null-ls')
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.black,    -- Python formatter :contentReference[oaicite:11]{index=11}
		-- null_ls.builtins.formatting.rustfmt,  -- Rust formatter
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = "LspFormatting", buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = vim.api.nvim_create_augroup("LspFormatting", {}),
				buffer = bufnr,
				callback = function() vim.lsp.buf.format({ bufnr = bufnr }) end,
			})
		end
	end,
})


