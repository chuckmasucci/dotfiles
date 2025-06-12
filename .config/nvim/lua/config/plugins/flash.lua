return {
  "folke/flash.nvim",
  event = "VeryLazy",
  -- @type Flash.Config
  opts = {
    modes = {
      char = {
        keys = {}
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
  init = function ()
    -- vim.api.nvim_set_keymap("n", "<ESC>", "require('flash.plugins.char').state:hide()<Cr>", {noremap = true, silent = true})
  end
}
