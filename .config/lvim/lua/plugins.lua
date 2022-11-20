local M = {}
M.config = function()
  lvim.plugins = {
    { "Mofiqul/dracula.nvim" },
    { "farmergreg/vim-lastplace" },
    { "christoomey/vim-tmux-navigator" },
    { "ggandor/leap.nvim" },
  }
end

-- require("leap").set_default_keymaps()

return M
