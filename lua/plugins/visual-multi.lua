return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>", -- add next match
        ["Find Subword Under"] = "<C-d>",
        ["Skip Region"] = "<C-x>", -- skip current match
        ["Remove Region"] = "<C-p>", -- remove cursor
        ["Select All"] = "<A-d>", -- select all matches
      }
    end,
  },
} -- Core workflow (this is 90% of usage)
-- Ctrl + n
-- → Select word under cursor, press again to add next match
-- Shift + Ctrl + n
-- → Skip current match (go to next)
-- Alt + n
-- → Select all matches at once
--
-- Once multiple cursors are active:
--
-- Just type → edits happen everywhere
-- c, d, i, etc. all work
