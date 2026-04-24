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
              completeFunctionCalls = true,
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
              completeFunctionCalls = true,
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
}
