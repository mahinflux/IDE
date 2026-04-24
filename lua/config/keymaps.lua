-- better API
local map = vim.keymap.set

-- exit insert mode
map("i", "jj", "<Esc>", { desc = "Exit insert mode" })
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- toggle terminal
map("n", "<C-j>", function()
  require("toggleterm").toggle()
end, { desc = "Toggle Terminal" })

map("t", "<C-j>", function()
  vim.cmd("stopinsert")
  require("toggleterm").toggle()
end, { desc = "Toggle Terminal" })
