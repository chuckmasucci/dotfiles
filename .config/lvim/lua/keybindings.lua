local M = {}

M.config = function()
  -- Normal Mode
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
  lvim.keys.normal_mode["<Tab>"] = ":bnext<CR>"
  lvim.keys.normal_mode["<S-Tab>"] = ":bprevious<CR>"
  lvim.keys.normal_mode["<S-x>"] = ":BufferClose<CR>"
  lvim.keys.normal_mode['N'] = "Nzzzv"
  lvim.keys.normal_mode['J'] = "mzJ`z"
  lvim.keys.normal_mode["<C-h>"] = nil
  lvim.keys.normal_mode["<C-j>"] = nil
  lvim.keys.normal_mode["<C-k>"] = nil
  lvim.keys.normal_mode["<C-l>"] = nil
  lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
  lvim.keys.normal_mode["za"] = "za:IndentBlanklineRefresh<CR>"
  lvim.keys.normal_mode["zr"] = "za:IndentBlanklineRefresh<CR>"
  lvim.keys.normal_mode["zo"] = "za:IndentBlanklineRefresh<CR>"
  lvim.keys.normal_mode["n"] = "nzz"
  lvim.keys.normal_mode['N'] = "Nzz"
  lvim.keys.normal_mode['<C-o>'] = "<C-o>zz"
  lvim.keys.normal_mode['+'] = "<C-w>|"
  lvim.keys.normal_mode['-'] = "<C-w>="
  lvim.keys.normal_mode['<leader>o'] = ":ToggleOnly<CR>"

  -- Insert mode
  lvim.keys.insert_mode = {
    ["<Tab>"] = { 'pumvisible() ? "<C-n>" : "<Tab>"', { silent = true, noremap = true, expr = true } },
    ["<S-Tab>"] = { 'pumvisible() ? "<C-p>" : "<S-Tab>"', { silent = true, noremap = true, expr = true } }
  }

  -- cnoremap
  vim.cmd [[
    cnoremap <expr> <C-P> wildmenumode() ? "\<C-P>" : "\<Up>"
    cnoremap <expr> <C-N> wildmenumode() ? "\<C-N>" : "\<Down>"
  ]]
end

return M

