-- =========================
-- THEME SELECTOR
-- =========================
local THEME = "oxocarbon" -- "tokyonight" | "vercel" | "oxocarbon"

-- TOKYONIGHT VARIANT
local TOKYO_STYLE = "night" -- "night" | "storm" | "day" | "moon"

return {
  -- =========================
  -- TOKYONIGHT
  -- =========================
  {
    "folke/tokyonight.nvim",
    lazy = THEME ~= "tokyonight",
    priority = 1000,
    opts = {
      style = TOKYO_STYLE,
      transparent = false,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      if THEME == "tokyonight" then
        vim.cmd.colorscheme("tokyonight-" .. TOKYO_STYLE)
      end
    end,
  },

  -- =========================
  -- VERCEL
  -- =========================
  {
    "tiesen243/vercel.nvim",
    lazy = THEME ~= "vercel",
    priority = 1000,
    config = function()
      require("vercel").setup({
        theme = "dark", -- "dark" | "light"
        transparent = false,
        italics = {
          comments = true,
          keywords = true,
        },
      })
      if THEME == "vercel" then
        vim.cmd.colorscheme("vercel")
      end
    end,
  },

  -- =========================
  -- OXOCARBON
  -- =========================
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = THEME ~= "oxocarbon",
    priority = 1000,
    config = function()
      if THEME == "oxocarbon" then
        vim.cmd.colorscheme("oxocarbon")
      end
    end,
  },

  -- =========================
  -- LazyVim base
  -- =========================
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = ({
        tokyonight = "tokyonight-" .. TOKYO_STYLE,
        vercel = "vercel",
        oxocarbon = "oxocarbon",
      })[THEME],
    },
  },
}
