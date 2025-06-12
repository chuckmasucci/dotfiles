local M = {}

M.config = function()
  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = { "volar", "eslint", "lua_ls", "ts_ls", "somesass_ls" }
  })

  local function getVueTsPluginPathFromMason()
    local mason_registry = require("mason-registry")
    local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
      .. "/node_modules/@vue/language-server"
    return vue_language_server_path
  end

  local lspconfig = require("lspconfig")
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  lspconfig.ts_ls.setup {
    root_dir = require('lspconfig.util').root_pattern('.git'),
    capabilities = capabilities,
    init_options = {
      plugins = {
        {
          name = "@vue/typescript-plugin",
          location = getVueTsPluginPathFromMason(),
          languages = {"vue"},
        },
      },
    },
    filetypes = {
      'typescriptreact',
      "javascript",
      "typescript",
      "vue",
    },
  }
  lspconfig.hyprls.setup {
    root_dir = require('lspconfig.util').root_pattern('.*/hypr/.*%.conf'),
    capabilities = capabilities
  }
  lspconfig.bashls.setup {
    root_dir = require('lspconfig.util').root_pattern('.git'),
    capabilities = capabilities
  }
  lspconfig.volar.setup {
    root_dir = require('lspconfig.util').root_pattern('.git'),
    capabilities = capabilities,
  }
  lspconfig.somesass_ls.setup {
    root_dir = require('lspconfig.util').root_pattern('.git'),
    capabilities = capabilities,
    filetypes = {
      ".css",
      ".sass",
      ".scss",
      "vue",
    },
  }
  lspconfig.eslint.setup {
    root_dir = require('lspconfig.util').root_pattern('.git'),
    capabilities = capabilities,
    filetypes = {
      "javascript",
      "typescript",
      "typescriptreact",
      "vue",
    },
  }
  lspconfig.lua_ls.setup {
    root_dir = require('lspconfig.util').root_pattern('.git'),
    capabilities = capabilities,
    settings = {
      Lua = {
        diagnostics = {
          globals = {
            "vim",
            "require",
          }
        }
      }
    }
  }

  vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = { "*.vue", "*.js", "*.tsx", "*.ts" },
      command = "EslintFixAll",
  })

  vim.diagnostic.config { float = { border = "rounded" }, virtual_text = false }
  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
  })

  vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
  vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist)


  vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
      -- Enable completion triggered by <c-x><c-o>
      vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

      -- Buffer local mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local opts = { buffer = ev.buf }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
      -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
      -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
      -- vim.keymap.set('n', '<space>wl', function()
      --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      -- end, opts)
      vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
      -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end,
  })

  vim.fn.sign_define("DiagnosticSignError", { text = '', texthl = "DiagnosticSignError" })
  vim.fn.sign_define("DiagnosticSignWarn", { text = '', texthl = "DiagnosticSignWarn" })
  vim.fn.sign_define("DiagnosticSignInfo", { text = '', texthl = "DiagnosticSignInfo" })
  vim.fn.sign_define("DiagnosticSignHint", { text = '󰌶', texthl = "DiagnosticSignHint" })

  -- Diagnostics
  -- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  --   vim.lsp.diagnostic.on_publish_diagnostics,
  --   {
  --     virtual_text = false,
  --     signs = true,
  --     update_in_insert = false,
  --     underline = true,
  --   }
  -- )
end

return M
