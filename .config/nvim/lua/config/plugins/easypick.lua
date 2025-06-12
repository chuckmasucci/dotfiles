return {
  {
    "axkirillov/easypick.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim"
    },
    init = function()
      local easypick = require("easypick")
      local base_branch = "master"
      easypick.setup({
        pickers = {
          {
            name = "changed_files",
            command = "git diff --name-only $(git merge-base HEAD " .. base_branch .. " )",
            previewer = easypick.previewers.branch_diff({base_branch = base_branch})
          }
        }
      })

      -- Keymap
      vim.keymap.set("n", "<leader>fc", ":Easypick changed_files<CR>", {})
    end
  }
}
