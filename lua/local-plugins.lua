local M = {}

local path = vim.fn.stdpath('data') ..'/site/pack/packer/start'
-- local autotag_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/nvim-ts-autotag'
-- local null-ls_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/null-ls.nvim'
--
function M.install()
-- if vim.fn.empty(vim.fn.glob(autotag_path)) > 0 then
--   print('Installing autotag...')
--   local url = 'https://github.com/windwp/nvim-ts-autotag.git'
--   vim.fn.system({'git', 'clone', '--depth', '1', url, autotag_path})
--   print('Done.')
--
--   -- Only required if you have packer configured as `opt`
--   vim.cmd('packadd nvim-ts-autotag')
-- end
--   if vim.fn.empty(vim.fn.glob(null-ls_path)) > 0 then
--   print('Installing null-ls...')
--   local url = 'https://github.com/jose-elias-alvarez/null-ls.nvim.git'
--   vim.fn.system({'git', 'clone', '--depth', '1', url, null-ls_path})
--   print('Done.')
--

end

return M
