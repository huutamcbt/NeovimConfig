-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
--
-- -- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true
--
-- -- empty setup using defaults
-- require("nvim-tree").setup()
--
-- -- OR setup with some options
-- require("nvim-tree").setup({
--   sort_by = "case_sensitive",
--   view = {
--     adaptive_size = true,
--     mappings = {
--       list = {
--         { key = "u", action = "dir_up" },
--       },
--     },
--   },
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })
--
--
-- ------------- Key mapping ---------------------
--

------------- Subscribe events ---------------------
-- local ntapi = require("nvim-tree.api")
-- local Event = ntapi.events.Event
--
-- ntapi.events.subscribe(Event.Resize, function(data)
--   local bufferline_api = require('bufferline.api')
--   if(data > 0)
--     then
--       print("data " .. data)
--     bufferline_api.set_offset(data)
--   end
-- end)
--

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    width = 30,
    side = "left",
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
  },
}


