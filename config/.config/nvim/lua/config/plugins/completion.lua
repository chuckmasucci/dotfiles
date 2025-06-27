return {
  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = 'rafamadriz/friendly-snippets',

    -- use a release tag to download pre-built binaries
    version = '*',
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'default' for mappings similar to built-in completion
      -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
      -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
      -- See the full "keymap" documentation for information on defining your own keymap.
      keymap = {
        preset = 'super-tab',
        ['<CR>'] = { 'accept', 'fallback' },
      },

      appearance = {
        -- Sets the fallback highlight groups to nvim-cmp's highlight groups
        -- Useful for when your theme doesn't support blink.cmp
        -- Will be removed in a future release
        use_nvim_cmp_as_default = false,
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'normal'
      },

      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
        menu = {
          auto_show = function (ctx) return ctx.mode ~= 'cmdline' end
        },
        trigger = {
          show_on_keyword = true
        },
      },

      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
    opts_extend = { "sources.default" }
  }
-- {
--     "hrsh7th/nvim-cmp",
--     dependencies = {
--       "neovim/nvim-lspconfig",
--       "hrsh7th/cmp-nvim-lsp",
--       "hrsh7th/cmp-buffer",
--       "hrsh7th/cmp-path",
--       "L3MON4D3/LuaSnip",
--       "saadparwaiz1/cmp_luasnip",
--       "onsails/lspkind-nvim",
--       "rafamadriz/friendly-snippets",
--     },
--     init = function()
--       local has_words_before = function()
--         if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
--         local line, col = unpack(vim.api.nvim_win_get_cursor(0))
--         return col ~= 0 and vim.api.nvim_buf_get_text(0, line-1, 0, line-1, col, {})[1]:match("^%s*$") == nil
--       end
--
--       local cmp = require("cmp")
--       local lspkind = require("lspkind")
--       local cmp_next = function(fallback)
--         if cmp.visible() and has_words_before() then
--           cmp.select_next_item()
--         elseif require("luasnip").expand_or_jumpable() then
--           vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
--         else
--           fallback()
--         end
--       end
--       local cmp_prev = function(fallback)
--         if cmp.visible() then
--           cmp.select_prev_item()
--         elseif require("luasnip").jumpable(-1) then
--           vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
--         else
--           fallback()
--         end
--       end
--       lspkind.init()
--
--       cmp.setup({
--         completion = {
--           completeopt = "menu,menuone,preview"
--         },
--         snippet = {
--           expand = function(args)
--             require('luasnip').lsp_expand(args.body)
--           end,
--         },
--         window = {
--           completion = cmp.config.window.bordered({
--             winhighlight = "Normal:Normal,FloatBorder:LspBorderBG,CursorLine:PmenuSel,Search:None",
--           }),
--           documentation = cmp.config.window.bordered({
--             winhighlight = "Normal:Normal,FloatBorder:LspBorderBG,CursorLine:PmenuSel,Search:None",
--           }),
--         },
--         formatting = {
--           format = lspkind.cmp_format({
--             mode = "symbol_text",
--             menu = ({
--               buffer = "[Buffer]",
--               copilot = "[Copilot]",
--               nvim_lsp = "[LSP]",
--               luasnip = "[LuaSnip]",
--               nvim_lua = "[Lua]",
--             })
--           }),
--         },
--         mapping = {
--           ["<C-d>"] = cmp.mapping.scroll_docs(-4),
--           ["<C-f>"] = cmp.mapping.scroll_docs(4),
--           ["<S-Space>"] = cmp.mapping.complete(),
--           ["<C-e>"] = cmp.mapping.close(),
--           ["<CR>"] = cmp.mapping.confirm({
--             behavior = cmp.ConfirmBehavior.Replace,
--             select = true,
--           }),
--           ["<tab>"] = cmp_next,
--           ["<down>"] = cmp_next,
--           ["<S-tab>"] = cmp_prev,
--           ["<C-p>"] = cmp_prev,
--           ["<up>"] = cmp_prev,
--         },
--         sources = cmp.config.sources({
--           { name = "copilot", group_index = 2 },
--           { name = 'nvim_lsp', keyword_length = 1 },
--           { name = 'luasnip', keyword_length = 1 },
--         }),
--       })
--       cmp.mapping.confirm({ select = true })
--
--       require("luasnip.loaders.from_snipmate").lazy_load()
--       require("luasnip.loaders.from_vscode").lazy_load()
--       require("luasnip").filetype_extend("javascript", { "jsdoc" })
--       require("luasnip").filetype_extend("vue", { "jsdoc" })
--
--       -- local presentAutopairs, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
--       -- if not presentAutopairs then
--       --   return
--       -- end
--       -- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
--     end
--   },
}

