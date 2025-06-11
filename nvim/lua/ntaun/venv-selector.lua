local venv_selector = require('venv-selector')

venv_selector.setup({
    name = ".venv",
})

vim.keymap.set('n', '<leader>vs', '<cmd>VenvSelect<cr>', { desc = "Select Python virtualenv" })
vim.keymap.set('n', '<leader>vc', '<cmd>VenvSelectCached<cr>', { desc = "Select cached venv" })
