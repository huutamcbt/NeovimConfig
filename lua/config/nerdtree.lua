local api = vim.api
local g = vim.g

--vim.cmd('autocmd VimEnter * NERDTree')

-- NerdTree setting

api.nvim_set_keymap('n', '<leader>n',':NERDTreeFocus<CR>',{ noremap = true, silent = true})
api.nvim_set_keymap('n', '<C-n>',':NERDTree<CR>',{ noremap = true, silent = true})
api.nvim_set_keymap('n', '<C-t>',':NERDTreeToggle<CR>',{ noremap = true, silent = true})
--api.nvim_set_keymap('n', '<C-f>',':NERDTreeFind<CR>',{ noremap = true, silent = true})


-- NERDTree git plugin setting

g.NERDTreeGitStatusIndicatorMapCustom = {
                 Modified  ='✹',
                 Staged    ='✚',
                 Untracked ='✭',
                 Renamed   ='➜',
                 Unmerged  ='═',
                 Deleted   ='✖',
                 Dirty     ='✗',
                 Ignored   ='☒',
                 Clean     ='✔︎',
                 Unknown   ='?',
                 }

g.NERDTreeGitStatusShowIgnored = 1                    -- Show git ignored status
g.NERDTreeGitStatusUntrackedFilesMode = 'all'         -- Indicate every single untracked file under untracked directory 
g.NERDTreeGitStatusShowClean = 1                      -- Show clean indicator

-- Vim devicons setting


-- Nerd Tree syntax highlight

g.NERDTreeFileExtensionHighlightFullName = 1
g.NERDTreeExactMatchHighlightFullName = 1
g.NERDTreePatternMatchHighlightFullName = 1

vim.cmd[[
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule
]]

