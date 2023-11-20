-- Neovim Configuration File

-- File Handling
vim.opt.swapfile = false -- Disable swap file creation
vim.opt.backup = false -- Disable backup file creation
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Set undo history file directory
vim.opt.undofile = true -- Enable persistent undo

-- Line Numbering
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.number = true -- Show absolute line numbers
vim.opt.nu = true -- Alias for opt.number

-- Tabs & Indentation
local indent = 2 -- Indentation size
vim.opt.tabstop = indent -- Number of spaces in a tab
vim.opt.shiftwidth = indent -- Spaces per indentation level
vim.opt.softtabstop = indent -- Spaces for Tab/Backspace operations
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.autoindent = true -- Auto-indent new lines
vim.opt.smartindent = true -- Smart auto-indenting

-- Line Wrapping
vim.opt.wrap = false -- Disable text wrapping

-- Search Settings
vim.opt.ignorecase = true -- Case-insensitive searching
vim.opt.smartcase = true -- Case-sensitive if uppercase in query
vim.opt.hlsearch = false -- Disable search highlighting
vim.opt.incsearch = true -- Incremental search highlighting

-- Cursor Appearance
vim.opt.cursorline = true -- Highlight current line

-- Appearance & UI
vim.opt.termguicolors = true -- Enable true color support
vim.opt.scrolloff = 8 -- Minimum lines above/below cursor
vim.opt.background = "dark" -- Dark mode color scheme
vim.opt.signcolumn = "yes" -- Always show the sign column

-- File Names and Update Timing
vim.opt.isfname:append("@-@") -- Include '@-@' in file names
vim.opt.updatetime = 50 -- Time before triggering events

-- Backspace Behavior
vim.opt.backspace = "indent,eol,start" -- Backspace over indents, line endings, and insert start

-- Clipboard
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard for copy/paste

-- Window Splitting
vim.opt.splitright = true -- Open vertical splits to the right
vim.opt.splitbelow = true -- Open horizontal splits below
