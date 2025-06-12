return {
  {
    "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {},
    init = function ()
      require("ibl").setup({
        scope = {
          show_start = false
        }
      })
    end
  }
}
