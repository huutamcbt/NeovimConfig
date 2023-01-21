local api = vim.api
-- Keymap
api.nvim_set_keymap('n', '<F7>',':FloatermNew<CR>',{ noremap = true, silent = true})
api.nvim_set_keymap('t', '<F7>','<C-\\><C-n>:FloatermNew<CR>',{ noremap = true, silent = true})
api.nvim_set_keymap('n', '<F8>',':FloatermPrev<CR>',{ noremap = true, silent = true})
api.nvim_set_keymap('t', '<F8>','<C-\\><C-n>:FloatermPrev<CR>',{ noremap = true, silent = true})
api.nvim_set_keymap('n', '<F9>',':FloatermNext<CR>',{ noremap = true, silent = true})
api.nvim_set_keymap('t', '<F9>','<C-\\><C-n>:FloatermNext<CR>',{ noremap = true, silent = true})
api.nvim_set_keymap('n', '<F12>',':FloatermToggle<CR>',{ noremap = true, silent = true})
api.nvim_set_keymap('t', '<F12>','<C-\\><C-n>:FloatermToggle<CR>',{ noremap = true, silent = true})

vim.cmd[[
" Configuration example

" Set floaterm window's background to black
hi Floaterm guibg=black
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=cyan guifg=orange
]]
