return {
  {
    {
      "bassamsdata/namu.nvim",
      config = function()
        require("namu").setup({
          -- Enable the modules you want
          namu_symbols = {
            enable = true,
            options = {}, -- here you can configure namu
          },
          -- Optional: Enable other modules if needed
          ui_select = { enable = false }, -- vim.ui.select() wrapper
          colorscheme = {
            enable = false,
            options = {
              -- NOTE: if you activate persist, then please remove any vim.cmd("colorscheme ...") in your config, no needed anymore
              persist = true, -- very efficient mechanism to Remember selected colorscheme
              write_shada = false, -- If you open multiple nvim instances, then probably you need to enable this
            },
          },
        })
        -- === Suggested Keymaps: ===
        vim.keymap.set("n", "<leader>ss",":Namu symbols<cr>" , {
          desc = "Jump to LSP symbol",
          silent = true,
        })
        vim.keymap.set("n", "<leader>th", ":Namu colorscheme<cr>", {
          desc = "Colorscheme Picker",
          silent = true,
        })
      end,
    }
  }
  -- "hedyhli/outline.nvim",
  -- init = function ()
  --   vim.keymap.set("n", "<leader>tt", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
  --    require("outline").setup({
  --      symbols = {
  --       File = { icon = "", hl = "@text.uri" },
  --       Module = { icon = "", hl = "@namespace" },
  --       Namespace = { icon = "", hl = "@namespace" },
  --       Package = { icon = "", hl = "@namespace" },
  --       Class = { icon = "", hl = "@type" },
  --       Method = { icon = "ƒ", hl = "@method" },
  --       Property = { icon = "", hl = "@method" },
  --       Field = { icon = "", hl = "@field" },
  --       Constructor = { icon = "", hl = "@constructor" },
  --       Enum = { icon = "", hl = "@type" },
  --       Interface = { icon = "", hl = "@type" },
  --       Function = { icon = "", hl = "@function" },
  --       Variable = { icon = "", hl = "@constant" },
  --       Constant = { icon = "", hl = "@constant" },
  --       String = { icon = "", hl = "@string" },
  --       Number = { icon = "#", hl = "@number" },
  --       Boolean = { icon = "", hl = "@boolean" },
  --       Array = { icon = "", hl = "@constant" },
  --       Object = { icon = "", hl = "@type" },
  --       Key = { icon = "", hl = "@type" },
  --       Null = { icon = "", hl = "@type" },
  --       EnumMember = { icon = "", hl = "@field" },
  --       Struct = { icon = "", hl = "@type" },
  --       Event = { icon = "", hl = "@type" },
  --       Operator = { icon = "", hl = "@operator" },
  --       TypeParameter = { icon = "", hl = "@parameter" },
  --       Component = { icon = "", hl = "@function" },
  --       Fragment = { icon = "", hl = "@constant" },
  --     }
  --    })
  -- end
}
