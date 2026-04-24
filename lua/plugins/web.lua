return {
  -- TypeScript + React support
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- Tailwind support
  { import = "lazyvim.plugins.extras.lang.tailwind" },

  -- Prettier formatting
  { import = "lazyvim.plugins.extras.formatting.prettier" },

  -- Treesitter configuration
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}

      vim.list_extend(opts.ensure_installed, {
        "typescript",
        "tsx",
        "javascript",
        "html",
        "css",
        "json",
        "jsonc",
      })
    end,
  },
}
