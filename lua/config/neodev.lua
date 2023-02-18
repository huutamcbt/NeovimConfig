local status_ok, neodev = pcall( require, "neodev");
if (not status_ok) then return end

-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
neodev.setup({
  -- add any options here, or leave empty to use the default settings
})

-- then setup your lsp server as usual
local lspconfig = require('lspconfig')

-- example to setup lua_ls and enable call snippets
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
})
