------------------------------ General setting ------------------------------------------

local api = vim.api
local g = vim.g
local opt = vim.opt
local bo = vim.bo

-- Remap leader and local leader to <Space>

opt.number = true -- Set row number
opt.mouse = "a" -- Set use mouse interaction in neovim
opt.termguicolors = true -- Set terminalcolor for neovim colorscheme
opt.breakindent = true -- If "breakindent" is set, line is visually indented
opt.undofile = true
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true
opt.mousemoveevent = true

-- Disable backup function
opt.backup = false
opt.writebackup = false
opt.swapfile = false

opt.scrolljump = 5 -- Specify lines to scroll when cursor leaves screen
opt.expandtab = true
opt.autoindent = true
opt.shiftwidth = 5 -- Number of spaces to use for each step of (auto)indent
opt.tabstop = 5 -- Number of spaces that a <Tab> in the file counts for
opt.smarttab = true
opt.showtabline = 2
opt.wrap = true -- When this option is true, lines longer than the width of the window will wrap and displaying continues on the next line
opt.cursorline = true
opt.showmode = true
opt.linebreak = true -- break line for the complete word
------------------------------ Command setting ------------------------------------------

-- Setup clipboard for specific OS
vim.cmd([[
	if has('win32')
		set clipboard^=unnamed,unnamedplus
	else
		set clipboard=unnamedplus
	endif
]])
-- Highlight on yank
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])

-- Disable automatic comment insertion
vim.cmd("autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")

------------------------------ Call some essential files------------------------------------------

require("plugins").setup()
require("config.theme")
require("config.airline")
require("config.comment")
require("config.nvim-tree")
require("config.bufferline")
require("config.toggleterm")
require("config.treesitter")
require("config.mason")
require("config.mason-lspconfig")
require("config.lsp.lsp")
require("config.neodev")
require("config.null-ls")
-- A high-performance color highlighter

require("config.gitsigns")
require("config.lualine")
require("config.nvim-dap")
require("config.dapui")
require("config.glow")
require("config.colorizer")
require("config.keymap")

