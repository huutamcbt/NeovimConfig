local M = {}

function M.setup()
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

-- Check if packer.nvim is installed
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing packer...')
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  print('Done.')

  -- Only required if you have packer configured as `opt`
  vim.cmd('packadd packer.nvim')
  install_plugins = true
end

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

end

return M

