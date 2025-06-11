vim.g.mapleader = " "

-- FULL PERSONAL
-- Allow to find a character, and do the same a ci<x> but on the actual line, not the block 
vim.keymap.set('n', '<leader>ci', function()
  -- read one character
  local c = vim.fn.nr2char(vim.fn.getchar())
  -- construct and execute f{c}ci{c}
  vim.cmd('normal! f' .. c .. 'ci' .. c)
  end, { desc = "Change inner next-char" }
)

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-n>", ':NvimTreeToggle<CR>',  {noremap = true, silent = true})

-- change to alt-arrow like vscode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete to void
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>Y", [["+Y

-- sed auto
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- linux only :(
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
