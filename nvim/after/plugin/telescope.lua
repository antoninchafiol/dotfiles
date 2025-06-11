local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function ()
	builtin.live_grep({
        prompt_title= "Grep: ",
        layout_strategy = "horizontal",
        layout_config = {width= 0.9}
    }) 
end, {desc = "live grep"})
-- Need to install ripgrep to make the ps wo
