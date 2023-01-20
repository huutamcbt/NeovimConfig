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


