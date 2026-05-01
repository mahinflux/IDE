return {
  -- 1. Ensure volt is loaded
  { "nvzone/volt", lazy = true },

  -- 2. Define minty with proper loading triggers
  {
    "nvzone/minty",
    cmd = { "Shades", "Huefy" },
    dependencies = { "nvzone/volt" }, -- Crucial: ensures volt loads first
    config = function()
      -- Optional: Add specific setup if needed
      -- require('minty').setup()
    end,
  },
}
