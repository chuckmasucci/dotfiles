require "config.neovim".config()
require 'config.lazy'.config()
require "config.keybindings".config()
require "config.lsp".config()
require "config.autocommands".config()

-- require('tabout').setup()

require("flow").setup()
vim.cmd.colorscheme("darkplus")
