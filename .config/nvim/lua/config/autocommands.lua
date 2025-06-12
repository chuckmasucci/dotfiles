local M = {}

M.config = function ()
  local autocmd = vim.api.nvim_create_autocmd
  local augroup = vim.api.nvim_create_augroup
  vim.cmd([[
    augroup highlight_yank
      autocmd!
      au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=100}
    augroup END 
  ]])

  vim.cmd([[
    autocmd VimResized * wincmd =
  ]])

  autocmd({'FileType'}, {
    pattern = 'help,qf,netrw',
    callback = function()
      vim.keymap.set('n', 'q', '<C-w>c', {buffer = true})
    end
  })

  -- vim.cmd([[ 
  --   augroup remember_folds
  --   autocmd!
  --   autocmd BufWrite ?* mkview 1
  --   autocmd BufRead ?* silent! loadview 1
  --   augroup END
  -- ]])

  -- Persistent Folds
  -- local save_fold = augroup("Persistent Folds", { clear = true })
  -- autocmd("BufWrite", {
  --   pattern = "*.*",
  --   callback = function()
  --     vim.cmd.mkview()
  --   end,
  --   group = save_fold,
  -- })
  -- autocmd("BufRead", {
  --   pattern = "*.*",
  --   callback = function()
  --     vim.cmd.loadview({ mods = { emsg_silent = true } })
  --   end,
  --   group = save_fold,
  -- })
end
return M
