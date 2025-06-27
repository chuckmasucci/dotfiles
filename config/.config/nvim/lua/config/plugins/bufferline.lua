return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = { 'nvim-tree/nvim-web-devicons', 'vim-scripts/bufkill.vim' },
  init = function()
    require("bufferline").setup()
  end
}
