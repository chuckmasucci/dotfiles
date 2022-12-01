local M = {}
M.config = function()
  lvim.plugins = {
    { "Mofiqul/dracula.nvim" },
    { "farmergreg/vim-lastplace" },
    {
      'alexghergh/nvim-tmux-navigation',
      config = function()
        require 'nvim-tmux-navigation'.setup {
          disable_when_zoomed = true, -- defaults to false
          keybindings = {
            left = "<C-h>",
            down = "<C-j>",
            up = "<C-k>",
            right = "<C-l>",
            last_active = "<C-\\>",
            next = "<C-Space>",
          }
        }
      end
    },
    { "ggandor/leap.nvim" },
    {
      "nvim-zh/colorful-winsep.nvim",
      config = function ()
        require("colorful-winsep").setup()
      end
    },
    {
      "ggandor/leap-spooky.nvim",
      config = function ()
        require('leap-spooky').setup {
          affixes = {
            -- These will generate mappings for all native text objects, like:
            -- (ir|ar|iR|aR|im|am|iM|aM){obj}.
            -- Special line objects will also be added, by repeating the affixes.
            -- E.g. `yrr<leap>` and `ymm<leap>` will yank a line in the current
            -- window.
            -- You can also use 'rest' & 'move' as mnemonics.
            remote   = { window = 'r', cross_window = 'R' },
            magnetic = { window = 'm', cross_window = 'M' },
          },
          -- If this option is set to true, the yanked text will automatically be pasted
          -- at the cursor position if the unnamed register is in use.
          paste_on_remote_yank = false,
        }
      end
    },
    {
      "ggandor/flit.nvim",
      config = function ()
        require('flit').setup {
          keys = { f = 'f', F = 'F', t = 't', T = 'T' },
          -- A string like "nv", "nvo", "o", etc.
          labeled_modes = "v",
          multiline = true,
          -- Like `leap`s similar argument (call-specific overrides).
          -- E.g.: opts = { equivalence_classes = {} }
          opts = {}
        }
      end
    }
  }
end

require("leap").set_default_keymaps()

return M
