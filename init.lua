------------------------------ General setting ------------------------------------------
local api = vim.api
local g = vim.g
local opt = vim.opt
local bo = vim.bo

-- Remap leader and local leader to <Space>

api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
g.mapleader = " "
g.maplocalleader = " "

opt.number = true -- set row number 
opt.mouse = "a"		-- set use mouse interaction in neovim
opt.termguicolors = true
opt.breakindent = true
opt.undofile = true

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

-- Set a theme for neovim
vim.cmd[[
	colorscheme tokyonight
]]

------------------------------ Call some essential files------------------------------------------

require "lua.plugins"
require "lua.config.airline"
