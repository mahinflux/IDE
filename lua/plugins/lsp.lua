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
              completeFunctionCalls = false,
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
              completeFunctionCalls = false,
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

  init = function()
    -- No auto hover popups
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "none" })

    -- Disable signature help popup while typing
    vim.lsp.handlers["textDocument/signatureHelp"] = function()
      return
    end

    -- Manual hover key
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Docs" })
  end,
}
