local null_ls = require("null-ls")

null_ls.setup({
  debug = false,
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.clang_format,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.cpplint,
    null_ls.builtins.completion.spell,
    null_ls.builtins.code_actions.gitsigns, 
    -- null_ls.builtins.formatting.astyle,
    -- null_ls.builtins.formatting.lua_format,
  },
})
