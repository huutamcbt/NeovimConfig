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

  -- File search 
  use {'junegunn/fzf',  run = ":call fzf#install()" }
  use 'junegunn/fzf.vim'

  -- Terminal
  use 'voldikss/vim-floaterm'

  -- Comment plugin
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

  -- File explorer nvim tree
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

  -- Bufferline to show buffer in a line
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use 'famiu/bufdelete.nvim'      -- Buffer delete plugin to supply for bufferline closed click

  -- Toggle terminal
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()

  end}

  -- LSP
  use 'neovim/nvim-lspconfig'


end)

end

return M

