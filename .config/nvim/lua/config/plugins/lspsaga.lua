return {
  {
    "nvimdev/lspsaga.nvim",
    init = function()
        -- require('lspsaga').setup({})
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    }
  }
}
