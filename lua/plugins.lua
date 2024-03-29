local M = {}

function M.setup()
     local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
     local install_plugins = false

     -- Check if packer.nvim is installed
     if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
          print("Installing packer...")
          local packer_url = "https://github.com/wbthomason/packer.nvim"
          vim.fn.system({ "git", "clone", "--depth", "1", packer_url, install_path })
          print("Done.")

          -- Only required if you have packer configured as `opt`
          vim.cmd("packadd packer.nvim")
          install_plugins = true
     end

     -- Autocommand that reloads neovim whenever you save the plugins.lua file
--      vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--   augroup end
-- ]])

     packer = require("packer")
     local use = packer.use
     packer.reset()
     packer.startup({
          function()
               -- Packer plugin
               use("wbthomason/packer.nvim")
               -- Dashboard
               -- use 'glepnir/dashboard-nvim'
               use({
                    "goolord/alpha-nvim",
                    config = function()
                         require("alpha").setup(require("alpha.themes.dashboard").config)
                         local alpha = require("alpha")
                         local dashboard = require("alpha.themes.dashboard")
                         dashboard.section.buttons.val = {
                              dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
                              dashboard.button("ff", "  Find file", ":Telescope find_files <CR>"),
                              dashboard.button("ofe", "  Open file explorer", ":Alpha <CR> <BAR> :NvimTreeOpen <CR>"),
                              dashboard.button(
                                   "orf",
                                   "  Open recently file",
                                   ":lua require'Telescope.builtin'.oldfiles{} <CR>"
                              ),
                              dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
                         }
                    end,
               })

               -- Themes
               use("folke/tokyonight.nvim")
               -- Status bar
               use("vim-airline/vim-airline")
               use("vim-airline/vim-airline-themes")

               -- Terminal
               use("voldikss/vim-floaterm")

               -- Comment plugin
               use({
                    "numToStr/Comment.nvim",
                    config = function()
                         require("Comment").setup()
                    end,
               })

               -- File explorer nvim tree
               use({
                    "nvim-tree/nvim-tree.lua",
                    requires = {
                         "nvim-tree/nvim-web-devicons", -- optional, for file icons
                    },
                    tag = "nightly", -- optional, updated every week. (see issue #1193)
               })

               -- Bufferline to show buffer in a line
               use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })
               use("famiu/bufdelete.nvim") -- Buffer delete plugin to supply for bufferline closed click

               -- Toggle terminal
               use({
                    "akinsho/toggleterm.nvim",
                    tag = "*",
                    config = function()
                         require("toggleterm").setup()
                    end,
               })

               -- Utility
               -- mkdir
               use({
                    "jghauser/mkdir.nvim",
               })

               -- Formatting
               require("packer").use({ "mhartington/formatter.nvim" })

               use({
                    "jghauser/mkdir.nvim",
               })

               -- Telescope
               use("nvim-lua/plenary.nvim")
               use({
                    "nvim-telescope/telescope.nvim",
                    tag = "0.1.1",
                    -- or                            , branch = '0.1.x',
                    requires = { { "nvim-lua/plenary.nvim" } },
               })
               use({ "nvim-telescope/telescope-file-browser.nvim" })

               use("stevearc/dressing.nvim")
               use({
                    "ziontee113/icon-picker.nvim",
                    config = function()
                         require("icon-picker").setup({
                              disable_legacy_commands = true,
                         })
                    end,
               })
               -- Treesitter
               use({
                    "nvim-treesitter/nvim-treesitter",
                    run = function()
                         local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
                         ts_update()
                    end,
               })

               -- Autopairs
               use({
                    "windwp/nvim-autopairs",
                    config = function()
                         require("nvim-autopairs").setup({})
                    end,
               })
               use({
                    "windwp/nvim-ts-autotag",
                    lock = true,
                    config = function()
                         require("nvim-ts-autotag").setup()
                    end,
               })

               -- LSP
               use("neovim/nvim-lspconfig")
               use("hrsh7th/nvim-cmp") -- Autocompletion plugin
               use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
               use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
               use("L3MON4D3/LuaSnip") -- Snippets plugin
               use({ "williamboman/mason.nvim" })
               use("williamboman/mason-lspconfig.nvim")

               -- null-ls
               use({
                    "jose-elias-alvarez/null-ls.nvim",
                    config = function()
                         require("null-ls").setup()
                    end,
                    requires = { "nvim-lua/plenary.nvim" },
               })
               -- Neovim colorize
               use("norcalli/nvim-colorizer.lua")
               -- Twilight
               use({
                    "folke/twilight.nvim",
                    config = function()
                         require("twilight").setup({
                              -- your configuration comes here
                              -- or leave it empty to use the default settings
                              -- refer to the configuration section below
                         })
                    end,
               })
               -- Zen-mode
               -- Lua
               use({
                    "folke/zen-mode.nvim",
                    config = function()
                         require("zen-mode").setup({
                              -- your configuration comes here
                              -- or leave it empty to use the default settings
                              -- refer to the configuration section below
                         })
                    end,
               })

               use { "ellisonleao/glow.nvim", config = function()
                    require("glow").setup({
                         install_path = "~/AppData/Local/nvim-data/"
                    })
               end }

               -- Scroll bar for neovim
               use("petertriho/nvim-scrollbar")

               use({
                    "kevinhwang91/nvim-hlslens",
                    config = function()
                         -- require('hlslens').setup() is not required
                         require("scrollbar.handlers.search").setup({
                              -- hlslens config overrides
                         })
                    end,
               })

               use({
                    "lewis6991/gitsigns.nvim",
                    config = function()
                         require("gitsigns").setup()
                         require("scrollbar.handlers.gitsigns").setup()
                    end,
               })
               use({
                    "adelarsq/image_preview.nvim",
                    lock = false,
               })
               use({
                    "dinhhuy258/git.nvim",
               })
               -- Lualine
               use({
                    "nvim-lualine/lualine.nvim",
                    requires = { "kyazdani42/nvim-web-devicons", opt = true },
               })
               -- Debugging
               use("mfussenegger/nvim-dap")
               use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
               use "folke/neodev.nvim"
               use 'ldelossa/nvim-dap-projects'
               -- use({
               --      "microsoft/vscode-js-debug",
               --      opt = true,
               --      run = "npm install --legacy-peer-deps && npm run compile",
               -- })
               -- use { "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } }
               -- use 'mfussenegger/nvim-jdtls'
          end,
          config = {
               display = {
                    open_fn = require("packer.util").float,
               },
          },
     })
end

return M
