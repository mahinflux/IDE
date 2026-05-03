return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = function()
          local cols = vim.o.columns
          return math.floor(cols * 0.2) -- 20% of screen width
        end,
      },
    },
  },
}
