local M = {}
M.config = function()
  -- dap
  lvim.builtin.dap.active = false

  -- nvimtree
  lvim.builtin.nvimtree.setup.view.width = 50
  lvim.builtin.nvimtree.side = "left"
  lvim.builtin.nvimtree.setup.actions.open_file.quit_on_open = true
  lvim.builtin.nvimtree.setup.disable_netrw = false
  lvim.builtin.nvimtree.setup.hijack_netrw = false

  -- bufferline
  lvim.builtin.bufferline.options.tab_size = 38
  lvim.builtin.bufferline.options.max_name_length = 38
  lvim.builtin.bufferline.options.show_buffer_close_icons = false
  -- lvim.builtin.bufferline.options.always_show_bufferline = true

  lvim.builtin.breadcrumbs.active = true
  -- lvim.builtin.notify.active = false

  -- illuminate
  lvim.builtin.illuminate.on_config_done = function()
    vim.cmd [[
    hi IlluminatedWord guibg=#264f78
    hi IlluminatedCurWord guibg=#264f78
    hi IlluminatedWordText guibg=#264f78
    hi IlluminatedWordRead guibg=#264f78 
    hi IlluminatedWordWrite guibg=#264f78 
  ]]
  end

  -- nvim-cmp
  lvim.builtin.cmp.sources = {
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "luasnip" },
    { name = "cmp_tabnine" },
    { name = "nvim_lua" },
    -- { name = "buffer" },
    { name = "calc" },
    { name = "emoji" },
    { name = "treesitter" },
    { name = "crates" },
    { name = "tmux" },
  }

  -- telescope
  local _, actions = pcall(require, "telescope.actions")
  lvim.builtin.telescope.defaults.mappings = {
    -- for input mode
    i = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      ["<C-n>"] = actions.cycle_history_next,
      ["<C-p>"] = actions.cycle_history_prev,
    },
    -- for normal mode
    n = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
    },
  }
  lvim.builtin.telescope.defaults.path_display = {}
  lvim.builtin.telescope.pickers = {}

  -- terminal
  lvim.builtin.terminal.active = true

  -- treesitter
  lvim.builtin.treesitter.autotag.enable = true
  lvim.builtin.treesitter.ignore_install = { "haskell" }
  lvim.builtin.treesitter.highlight.enabled = true
  lvim.builtin.treesitter.ensure_installed = {
    "css",
    "javascript",
    "json",
    "lua",
    "python",
    "scss",
    "typescript",
    "yaml",
    "vue",
  }

  -- project
  lvim.builtin.project.detection_methods = { "^src" }
  lvim.builtin.project.silent_chdir = false

end

return M

