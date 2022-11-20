local M = {}

M.config = function()
  vim.opt.foldmethod     = 'expr'
  vim.opt.foldexpr       = "nvim_treesitter#foldexpr()"
  -- vim.opt.foldmethod     = "indent"
  -- vim.opt.foldmethod = "syntax"
  vim.opt.foldlevel      = 99
  vim.opt.relativenumber = true
  vim.opt.background     = 'dark'
end

return M

