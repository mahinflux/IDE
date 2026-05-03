-- -- TokyoNight (Fully Refined Configuration)
--
-- return {
--   "folke/tokyonight.nvim",
--   priority = 1000,
--
--   config = function()
--     -- No transparency (ensures proper layering)
--     local transparent = false
--
--     -- Background layers
--     local bg = "#0A0F1C"
--     local bg_dark = "#070B14"
--     local bg_high = "#1A2A44"
--     local bg_visual = "#213B5A"
--     local bg_search = "#2B6CB0"
--
--     -- Foreground
--     local fg = "#D6E4F0"
--     local fg_dark = "#A9C0D9"
--     local fg_gutter = "#5B6B82"
--
--     -- Accent colors
--     local blue = "#7AA2F7"
--     local cyan = "#7DCFFF"
--     local green = "#9ECE6A"
--     local magenta = "#BB9AF7"
--     local orange = "#FF9E64"
--     local red = "#F7768E"
--     local yellow = "#E0AF68"
--
--     -- UI
--     local border = "#3B4A5F"
--
--     require("tokyonight").setup({
--       style = "night",
--       transparent = transparent,
--
--       styles = {
--         sidebars = "dark",
--         floats = "dark",
--       },
--
--       on_colors = function(colors)
--         colors.bg = bg
--         colors.bg_dark = bg_dark
--         colors.bg_float = bg_dark
--         colors.bg_highlight = bg_high
--         colors.bg_visual = bg_visual
--         colors.bg_search = bg_search
--         colors.bg_sidebar = bg_dark
--         colors.bg_statusline = bg_dark
--
--         colors.fg = fg
--         colors.fg_dark = fg_dark
--         colors.fg_float = fg
--         colors.fg_gutter = fg_gutter
--         colors.fg_sidebar = fg_dark
--
--         colors.border = border
--
--         colors.blue = blue
--         colors.cyan = cyan
--         colors.green = green
--         colors.magenta = magenta
--         colors.orange = orange
--         colors.red = red
--         colors.yellow = yellow
--       end,
--
--       on_highlights = function(_, c)
--         return {
--           CursorLine = { bg = c.bg_highlight },
--           CursorColumn = { bg = c.bg_highlight },
--
--           LineNr = { fg = c.fg_gutter },
--           CursorLineNr = { fg = c.yellow, bold = true },
--
--           Search = { bg = c.orange, fg = c.bg, bold = true },
--           IncSearch = { bg = c.red, fg = c.bg, bold = true },
--
--           Visual = { bg = c.bg_visual },
--
--           NormalFloat = { bg = c.bg_float },
--           FloatBorder = { fg = c.blue, bg = c.bg_float },
--
--           StatusLine = { bg = c.bg_dark, fg = c.fg },
--           StatusLineNC = { bg = c.bg_dark, fg = c.fg_gutter },
--
--           Pmenu = { bg = c.bg_dark, fg = c.fg },
--           PmenuSel = { bg = c.blue, fg = c.bg, bold = true },
--           PmenuSbar = { bg = c.bg_dark },
--           PmenuThumb = { bg = c.blue },
--
--           TelescopeBorder = { fg = c.blue, bg = c.bg_dark },
--           TelescopePromptBorder = { fg = c.green, bg = c.bg_dark },
--           TelescopeResultsBorder = { fg = c.bg_highlight, bg = c.bg_dark },
--           TelescopePreviewBorder = { fg = c.magenta, bg = c.bg_dark },
--
--           DiagnosticError = { fg = c.red },
--           DiagnosticWarn = { fg = c.yellow },
--           DiagnosticInfo = { fg = c.blue },
--           DiagnosticHint = { fg = c.cyan },
--
--           GitSignsAdd = { fg = c.green },
--           GitSignsChange = { fg = c.yellow },
--           GitSignsDelete = { fg = c.red },
--         }
--       end,
--     })
--
--     vim.cmd("colorscheme tokyonight")
--   end,
-- }
--
return {
  {
    "datsfilipe/vesper.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false, -- Set to true for a transparent background
      italics = {
        comments = true,
        keywords = true,
        functions = true,
        strings = true,
        variables = true,
      },
      overrides = {},
      palette_overrides = {},
    },
    config = function(_, opts)
      require("vesper").setup(opts)
      vim.cmd("colorscheme vesper")
    end,
  },
}
