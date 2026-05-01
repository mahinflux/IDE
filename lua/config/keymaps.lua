-- better API
local map = vim.keymap.set

-- exit insert mode
map("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- toggle secondery terminal terminal
map("n", "<C-t>", function()
  require("toggleterm").toggle()
end, { desc = "Toggle Terminal" })

--command panel open
vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })

--minty keymap
map("n", "<C-t>", function()
  require("plenary.reload").reload_module("minty.huefy")
  require("minty.huefy").open()
end, {})
