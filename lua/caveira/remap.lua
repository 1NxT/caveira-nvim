vim.g.mapleader = " "
vim.keymap.set("n", "<leader>b", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {noremap = true, silent = true})

vim.keymap.set("n", "<C-h>", "<C-w><Left>", {noremap = true, silent = true})
vim.keymap.set("n", "<C-l>", "<C-w><Right>", {noremap = true, silent = true})

vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
