vim.g.mapleader = " "
vim.keymap.set("n", "<leader>b", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

vim.keymap.set("n", "<C-h>", "<C-w><Left>", {noremap = true, silent = true})
vim.keymap.set("n", "<C-l>", "<C-w><Right>", {noremap = true, silent = true})
