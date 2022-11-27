local M = {}
M.config = function()
  lvim.plugins = {
    { "Mofiqul/dracula.nvim" },
    { "farmergreg/vim-lastplace" },
    -- { "christoomey/vim-tmux-navigator" },
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
  }
end

-- require("leap").set_default_keymaps()

return M
