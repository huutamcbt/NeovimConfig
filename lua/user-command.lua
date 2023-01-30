vim.api.nvim_create_user_command(
  'TabHelp', ':tab help <q-args>',{nargs = 1}
)
