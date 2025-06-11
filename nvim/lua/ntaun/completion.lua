local cmp = require('cmp')
local luasnip = require('luasnip')

vim.o.completeopt = "menu,menuone,noinsert,noselect"  -- popup behavior
cmp.setup({
	snippet = {
		expand = function(args) luasnip.lsp_expand(args.body) end,
	},
	mapping = {
		['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
            fallback()
            end
        end, {"i", "s"}),
		['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
            fallback()
            end
        end, {"i", "s"}),
        ["<CR>"] = cmp.mapping.confirm({select = false}),
        ["<C-Space>"] = cmp.mapping.complete(),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },  -- LSP-based completions on `.` and `::` :contentReference[oaicite:10]{index=10}
		{ name = 'luasnip' },    
	}, {
		{ name = 'buffer' },
	}),
})


