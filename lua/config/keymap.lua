------------------------ Nvim Tree ------------------------------
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeOpen<CR>',{ noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-x>', ':NvimTreeClose<CR>',{ noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-t>', ':NvimTreeToggle<CR>',{ noremap = true, silent = true})
    

------------------------ Map Leader key------------------------------
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.api.nvim_set_keymap("n","<C-q>", ":q<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n","<C-s>", ":w<CR>", { noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n","<q-a>", ":qa<CR>", { noremap = true, silent = true})

------------------------ Bufferline ------------------------------
vim.api.nvim_set_keymap("n", "<A-.>", ":BufferLineMoveNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-,>", ":BufferLineMovePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-]>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-[>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<b-e>", ":BufferLineSortByExtension<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<b-d>", ":BufferLineSortByDirectory<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Nop>", ":lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<A-p>", ":BufferLinePick<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-P>", ":BufferLinePickClose<CR>", { noremap = true, silent = true })

------------------------ Toggle terminal ------------------------------


local opts = { noremap = true, silent = true }

      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)

-- Toggle terminal 
vim.api.nvim_set_keymap("n", "<C-A-t>", ":ToggleTerm<CR>", { noremap = true, silent = true })

------------------------ Formatter ------------------------------
-- vim.api.nvim_set_keymap("n", "<leader>f", ":Format<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>F ", ":FormatWrite<CR>", { noremap = true, silent = true })


------------------------ Telescope ------------------------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


------------------------ Telescope file browser------------------------------
vim.api.nvim_set_keymap(
  "n",
  "<leader>fb",
  ":Telescope file_browser<CR>",
  { noremap = true }
)
------------------------ Icon picker ------------------------------
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
-- vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
