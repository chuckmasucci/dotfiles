return {
  "sindrets/diffview.nvim",
  init = function ()
   require('diffview').setup({
    enhanced_diff_hl = true,
    hooks = {
        diff_buf_read = function()
            vim.opt_local.foldlevel = 99
            vim.opt_local.foldenable = false
        end,
        diff_buf_win_enter = function()
            vim.opt_local.foldlevel = 99
            vim.opt_local.foldenable = false
        end
    }
  })
  end
}

