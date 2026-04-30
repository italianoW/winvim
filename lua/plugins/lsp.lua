return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config('*', {
        capabilities = capabilities,
      })

      -- configuração específica do lua_ls para reconhecer o runtime do Neovim
      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            runtime = { version = 'LuaJIT' },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
          }
        }
      })

      local servers = { "lua_ls", "ts_ls", "pyright" }

      for _, server in ipairs(servers) do
        vim.lsp.enable(server)
      end
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      icons = {
        package_installed = "V",
        package_pending = "-",
        package_uninstalled = "X"
      }
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "jdtls",
        "pyright"
      },
    }
  }
}
