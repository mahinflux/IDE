return {
  -- Add Python Extra from LazyVim
  { import = "lazyvim.plugins.extras.lang.python" },

  -- Configure LSP for AI Automation
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "basic", -- recommended for AI dev
                autoImportCompletions = true,
              },
            },
          },
        },
        ruff = {}, -- Use Ruff for blazing fast linting
      },
    },
  },

  -- Setup Debugger (DAP) for Python
  {
    "mfussenegger/nvim-dap-python",
    keys = {
      {
        "<leader>dPt",
        function()
          require("dap-python").test_method()
        end,
        desc = "Debug Test Method",
      },
    },
    config = function()
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },
}
