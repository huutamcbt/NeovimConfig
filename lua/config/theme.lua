local status_ok = pcall(require, "tokyonight");
if (not status_ok) then return end
-- Set a theme for neovim
vim.cmd('colorscheme tokyonight')

