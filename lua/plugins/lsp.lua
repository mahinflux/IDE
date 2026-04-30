return {
  "neovim/nvim-lspconfig",

  opts = {
    servers = {
      vtsls = {
        settings = {
          typescript = {
            preferences = {
              importModuleSpecifierPreference = "auto",
              includeCompletionsForModuleExports = true,
              includeCompletionsForImportStatements = true,
            },
            suggest = {
              completeFunctionCalls = false, -- 🔥 disable auto ()
            },
            updateImportsOnFileMove = {
              enabled = "always",
            },
          },

          javascript = {
            preferences = {
              includeCompletionsForModuleExports = true,
              includeCompletionsForImportStatements = true,
            },
            suggest = {
              completeFunctionCalls = false, -- 🔥 disable auto ()
            },
            updateImportsOnFileMove = {
              enabled = "always",
            },
          },
        },
      },

      angularls = {
        enabled = false,
      },
    },
  },

  config = function(_, opts)
    local lspconfig = require("lspconfig")

    -- Setup servers
    for server, config in pairs(opts.servers) do
      if config.enabled ~= false then
        lspconfig[server].setup(config)
      end
    end

    -- 🔥 Disable annoying UI behavior

    -- No auto hover popups
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "none" })

    -- Disable signature help popup while typing
    vim.lsp.handlers["textDocument/signatureHelp"] = function()
      return
    end

    -- Manual hover only
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Docs" })
  end,
}
