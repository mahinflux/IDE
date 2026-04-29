-- =========================
-- THEME SELECTOR
-- =========================
-- local THEME = "tokyonight" -- "tokyonight" | "nightfox"
-- local THEME = "nightfox" -- "tokyonight" | "nightfox"
local THEME = "vercel" --vercel
-- =========================
-- TOKYONIGHT VARIANTS
-- =========================
local TOKYO_STYLE = "night"
-- "night"
-- "storm"
-- "day"
-- "moon"

-- =========================
-- NIGHTFOX VARIANTS
-- =========================
local FOX_STYLE = "carbonfox"
-- "nightfox"
-- "dayfox"
-- "dawnfox"
-- "duskfox"
-- "nordfox"
-- "terafox"
-- "carbonfox"

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
  },

  -- =========================
  -- NIGHTFOX
  -- =========================
  {
    "EdenEast/nightfox.nvim",
    lazy = THEME ~= "nightfox",
    priority = 1000,
    opts = {
      options = {
        transparent = false,
        styles = {
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
        },
      },
    },
  },
  {
    -- add vercel.nvim
    {
      "tiesen243/vercel.nvim",
      opts = {
        -- optional configuration here
        trasparent = false, -- or true if you want transparency
        style = "dark", -- "dark" or "light"
      },
    },
    -- Configure LazyVim to load vercel.nvim
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "vercel",
      },
    },
  },

  -- =========================
  -- LAZYVIM CORE
  -- =========================
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = (function()
        if THEME == "tokyonight" then
          return "tokyonight-" .. TOKYO_STYLE
        elseif THEME == "nightfox" then
          return FOX_STYLE
        end
      end)(),
    },
  },
}
