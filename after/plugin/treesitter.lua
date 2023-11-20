require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all"
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"markdown_inline",
		"svelte",
		"graphql",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
	},

	sync_install = false,
	highlight = { enable = true, additional_vim_regex_highlighting = false },
	autotag = { enable = true },
	indent = { enable = true },

	auto_install = true,
})
