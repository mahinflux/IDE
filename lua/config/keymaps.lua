-- better API
local map = vim.keymap.set

-- exit insert mode
map("i", "jj", "<Esc>", { desc = "Exit insert mode" })
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- toggle secondery terminal terminal
map("n", "<C-t>", function()
  require("toggleterm").toggle()
end, { desc = "Toggle Terminal" })

map("t", "<C-t>", function()
  vim.cmd("stopinsert")
  require("toggleterm").toggle()
end, { desc = "Toggle Terminal" })

--command panel open
vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
