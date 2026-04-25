return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Web & Frontend
        "angular-language-server",
        "astro-language-server",
        "css-lsp",
        "emmet-language-server",
        "eslint-lsp",
        "html-lsp",
        "json-lsp",
        "prettier",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vtsls",

        -- Python
        "autoflake",
        "autopep8",
        "bandit",
        "basedpyright",
        "black",
        "debugpy",
        "django-language-server",
        "flake8",
        "isort",
        "jedi-language-server",
        "mypy",
        "pylint",
        "python-lsp-server", -- The real package name for pylsp
        "pyright",
        "ruff",

        -- Go, DevOps & Infrastructure
        "docker-compose-language-service",
        "dockerfile-language-server",
        "gopls",
        "golangci-lint",
        "hadolint",
        "helm-ls",
        "terraform-ls",
        "tflint",
        "yaml-language-server",

        -- Markdown, Text & Utilities
        "ast-grep",
        "lua-language-server",
        "markdownlint-cli2",
        "marksman",
        "shellcheck",
        "shfmt",
        "stylua",
        "taplo",
      },
    },
  },
}
