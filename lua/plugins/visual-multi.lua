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
}
