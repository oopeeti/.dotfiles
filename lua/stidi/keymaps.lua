vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local keymap = vim.keymap

-- general keymaps

keymap.set("n", "<leader>nh", ":nohl<CR>") -- Clear search highlights
keymap.set("n", "x", '"_x') -- Remove char but don't save it keymap.set("n", "<leader>+", "<C-a>") -- Increment number keymap.set("n", "<leader>-", "<C-x>") -- Decrement number -- window management keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- LSP Format vim.keymap.set("n", "<leader>c", "gcc<CR>") -- Source file vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)
----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- trouble
vim.keymap.set("n", "<leader>xx", function()
	require("trouble").toggle()
end)
vim.keymap.set("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end)
vim.keymap.set("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end)
vim.keymap.set("n", "<leader>xq", function()
	require("trouble").toggle("quickfix")
end)
vim.keymap.set("n", "<leader>xl", function()
	require("trouble").toggle("loclist")
end)
vim.keymap.set("n", "gR", function()
	require("trouble").toggle("lsp_references")
end)
