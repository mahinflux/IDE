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

-- ~/.config/nvim/lua/config/keymaps.lua

-- Accept suggestion
vim.keymap.set("i", "<C-l>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })

-- Next suggestion
vim.keymap.set("i", "<C-]>", function()
  return vim.fn
end, { expr = true, silent = true })

-- Previous suggestion
vim.keymap.set("i", "<C-[>", function()
  return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true, silent = true })

-- Clear suggestion
vim.keymap.set("i", "<C-x>", function()
  return vim.fn["codeium#Clear"]()
end, { expr = true, silent = true })
