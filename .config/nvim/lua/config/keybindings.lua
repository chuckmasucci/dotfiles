local M = {}

local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

M.config = function()
  -- Normal mode
  keymap("n", "<leader>w", ":w<CR>", default_opts)
  keymap("n", "<leader>q", ":qa<CR>", default_opts)
  keymap("n", "<Tab>", ":bnext<CR>", default_opts)
  keymap("n", "<S-Tab>", ":bprevious<CR>", default_opts)
  keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)
  keymap('n', "<C-h>", ":NvimTmuxNavigateLeft<CR>", default_opts)
  keymap('n', "<C-j>", ":NvimTmuxNavigateDown<CR>", default_opts)
  keymap('n', "<C-k>", ":NvimTmuxNavigateUp<CR>", default_opts)
  keymap('n', "<C-l>", ":NvimTmuxNavigateRight<CR>", default_opts)
  keymap('n', "<leader>c", ":BD<CR>", default_opts)
  keymap('n', "<C-o>", "<C-o>zz", default_opts)
  keymap('n', "n", "nzz", default_opts)

  -- Insert mode
  keymap("i", "<Tab>", 'pumvisible() ? "<C-n>" : "<Tab>"', expr_opts)
  keymap("i", "<S-Tab>", 'pumvisible() ? "<C-p>" : "<S-Tab>"', expr_opts)

  -- cnoremap
  vim.cmd [[
    cnoremap <expr> <C-P> wildmenumode() ? "\<C-P>" : "\<Up>"
    cnoremap <expr> <C-N> wildmenumode() ? "\<C-N>" : "\<Down>"
  ]]
end

return M

