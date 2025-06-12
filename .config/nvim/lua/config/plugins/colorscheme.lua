return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "morhetz/gruvbox",
    init = function()
      -- vim.cmd.colorscheme("gruvbox")
    end
  },
  {
    "Mofiqul/dracula.nvim",
    init = function()
      local dracula = require("dracula")
      local colors = dracula.colors()
      dracula.setup({
        overrides = {
          -- NormalFloat = { bg = colors.selection },
          -- FloatBorder = { bg = colors.selection },
          CurSearch = { bg = colors.comment, fg = "white" },
        }
      });
      -- vim.cmd.colorscheme("dracula")
    end
  },
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({
        -- optional configuration here
      })
    end
  },
  -- {
  -- "sho-87/kanagawa-paper.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  {
    "0xstepit/flow.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'nordic' .load()
    end
  },
  {
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup {
        style = 'warmer'
      }
      require 'onedark' .load()
    end
  },
  {
    'lunarvim/darkplus.nvim'
  }
}
