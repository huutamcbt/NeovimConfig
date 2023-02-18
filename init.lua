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

------------------------------ Command setting ------------------------------------------

-- Setup clipboard for specific OS
vim.cmd([[
	if has('unix')
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
require("Comment").setup()
require("config.nvim-tree")
require("config.bufferline")
require("config.toggleterm")
-- require ('config.lsp.cmp')
require("config.treesitter")
require("nvim-treesitter.install").compilers = { "clang", "gcc" }
require("telescope").load_extension("file_browser")
require("config.mason")
require("config.mason-lspconfig")
require("config.lsp.lsp")
require("config.neodev")
require("lspconfig").pyright.setup({})
require("lspconfig").tsserver.setup({})
require("lspconfig").clangd.setup({})
require("lspconfig").eslint.setup({})
require("lspconfig").csharp_ls.setup({})
-- require'lspconfig'.cssls.setup{}
-- require'lspconfig'.html.setup{}
-- require'lspconfig'.cssmodules_ls.setup{}
-- require("lspconfig").sumneko_lua.setup({})
-- require("lspconfig").jdtls.setup({})
require("config.null-ls")
-- A high-performance color highlighter
require("colorizer").setup({
	"*",
})
-- require "config.nvim-scrollbar"
-- require 'config.markdown'
-- require ('hlslens').setup()
require("image_preview").setup({})
require("config.gitsigns")
require("config.lualine")
require("git").setup()
require("config.nvim-dap")
require("dapui").setup()
require("glow").setup({
	style = "dark",
	width = 120,
	glow_path = vim.fn.exepath("glow"),
	install_path = "C:/Users/ADMIN/AppData/Local/nvim-data",
})
require("config.keymap")

-- require("zen-mode").toggle({
--   window = {
--     width = 0.85, -- width will be 85% of the editor width
--   },
-- })

-- require("indent_blankline").setup {
--     -- for example, context is off by default, use this to turn it on
--     show_current_context = true,
--     show_current_context_start = true,
-- }
