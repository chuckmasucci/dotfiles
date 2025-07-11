local M = {}

M.config = function()
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup("config.plugins", {
  change_detection = {
    -- automatically check for config file changes and reload the ui
    enabled = true,
    notify = false, -- get a notification when changes are found
  },
  defaults = { lazy = true },
  performance = {
    cache = {
      enabled = true,
      -- disable_events = {},
    },
    rtp = {
      disabled_plugins = {
        "gzip",
        --[[ "matchit", ]]
        --[[ "matchparen", ]]
        "netrwPlugin",
        "rplugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  ui = {
    size = { width = 0.9, height = 0.9 },
    border = { "┏", "━", "┓", "┃", "┛","━", "┗", "┃" },
  },
  checker = {
    -- automatically check for plugin updates
    enabled = false,
  },
})
end

return M

