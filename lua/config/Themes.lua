return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "moon", -- "storm", "moon", "night", "day"
      transparent = false, -- Enable transparent background
      styles = {
        sidebars = "dark", -- "dark", "transparent", "normal"
        floats = "dark",
      },
    },
  },
  -- Configure LazyVim to use tokyonight
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
