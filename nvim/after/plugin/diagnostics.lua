vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = "always",
        header = "",
        -- prefix = "",
    },
})
vim.api.nvim_create_autocmd("CursorHold", {
    group = vim.api.nvim_create_augroup("LspDiagnosticsFloat", { clear = true }),
    callback = function()
        vim.diagnostic.open_float(nil, { focusable = false, scope = "cursor" })
    end,
})

