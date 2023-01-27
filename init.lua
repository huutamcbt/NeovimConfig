------------------------------ General setting ------------------------------------------

local api = vim.api
local g = vim.g
local opt = vim.opt
local bo = vim.bo

-- Remap leader and local leader to <Space>


opt.number = true 		-- Set row number 
opt.mouse = "a"			-- Set use mouse interaction in neovim
opt.termguicolors = true	-- Set terminalcolor for neovim colorscheme
opt.breakindent = true		-- If "breakindent" is set, line is visually indented
opt.undofile = true
opt.ignorecase  = true 		-- Ignore case when searching
opt.smartcase = true
opt.mousemoveevent = true

-- Disable backup function
opt.backup = false
opt.writebackup = false
opt.swapfile = false

opt.scrolljump = 5		-- Specify lines to scroll when cursor leaves screen
opt.expandtab = true            
opt.shiftwidth = 2              -- Number of spaces to use for each step of (auto)indent
opt.tabstop = 2                 -- Number of spaces that a <Tab> in the file counts for
opt.smarttab = true
opt.showtabline = 2
opt.wrap = true                 -- When this option is true, lines longer than the width of the window will wrap and displaying continues on the next line

------------------------------ Command setting ------------------------------------------

-- Setup clipboard for specific OS
vim.cmd [[
	if has('unix')
		set clipboard^=unnamed,unnamedplus
	else
		set clipboard=unnamedplus
	endif
]]
-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

-- Disable automatic comment insertion
vim.cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')


------------------------------ Call some essential files------------------------------------------

require "config.theme"
require ("plugins").setup()
require "config.airline"
require('Comment').setup()
require "config.nvim-tree"
require "config.bufferline"
require "config.keymap"
require "config.toggleterm"
require'lspconfig'.pyright.setup{}
require ('config.lsp.pyright')
require'lspconfig'.tsserver.setup{}
require "config.treesitter"
require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
require("telescope").load_extension "file_browser"
-- require("indent_blankline").setup {
--     -- for example, context is off by default, use this to turn it on
--     show_current_context = true,
--     show_current_context_start = true,
-- }
