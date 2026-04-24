return {
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.tailwind" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- This ensures vtsls is definitely configured
        vtsls = {
          settings = {
            typescript = {
              suggest = {
                autoImports = true,
              },
            },
          },
        },
        -- Optional: If you aren't using Angular, we can tell it to stay quiet
        angularls = { enabled = false },
      },
    },
  },
  -- 3. Enhanced Treesitter for Web
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "tsx",
          "typescript",
          "javascript",
          "html",
          "css",
          "tailwindcss",
        })
      end
    end,
  },
}
