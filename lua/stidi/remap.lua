local keymap = vim.keymap
vim.g.mapleader = " "

-- Back to Explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Select all
keymap.set('n', '<leader>sa', 'gg<S-v>G')

-- Delete char forward
keymap.set('n', 'x', '"_x')
