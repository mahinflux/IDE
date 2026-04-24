return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Web Dev & Core
        "vtsls", -- Use this instead of ts_ls for better auto-imports
        "prettierd",
        "eslint_d",
        "tailwindcss-language-server",
        "astro-language-server",
        "emmet-ls",
        "css-lsp",
        "html-lsp",

        -- Python (Optimized: Ruff replaces almost everything)
        "ruff",
        "basedpyright",
        "debugpy",

        -- Go & Others
        "gopls",
        "goimports",
        "golangci-lint",
        "lua-language-server",
        "stylua",
        "shfmt",
        "shellcheck",
        "marksman", -- Markdown
        "taplo", -- TOML
        "yaml-language-server",
        "dockerfile-language-server",
        "docker-compose-language-service",
      },
    },
  },
}
