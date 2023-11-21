-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			},
		},
	},
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
vim.keymap.set("n", "<leader>pg", builtin.git_files, {})
vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})

telescope.load_extension("fzf")
