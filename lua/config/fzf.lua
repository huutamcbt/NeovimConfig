local g = vim.g

g.fzf_layout = { window = { width = 0.7, height = 0.65, highlight = 'Comment', border = 'sharp' } }
vim.cmd[[

let g:fzf_colors =
  \ { 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'] }
]]
