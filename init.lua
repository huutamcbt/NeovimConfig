-- General setting
local api = vim.api
local g = vim.g
local opt = vim.opt
local bo = vim.bo
-- Remap leader and local leader to <Space>

api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
g.mapleader = " "
g.maplocalleader = " "
g.airline_theme = "tomorrow"

opt.number = true
opt.mouse = "a"
opt.termguicolors = true
opt.breakindent = true
opt.undofile = true

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

packer = require "packer"
local use = packer.use
packer.reset()
packer.startup(function()
	-- Packer plugin 
	use 'wbthomason/packer.nvim'
	-- Dashboard
	use 'glepnir/dashboard-nvim'
	-- Themes
	use 'folke/tokyonight.nvim'
	-- Status bar
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
end)

vim.cmd[[
	colorscheme tokyonight
]]
