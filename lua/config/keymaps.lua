-- ~/.config/nvim/lua/config/keymaps.lua

local map = vim.keymap.set

-- =========================
-- BASIC EDITING (safe)
-- =========================

-- exit insert mode quickly
map("i", "jj", "<Esc>", { desc = "Exit insert mode" })
map("i", "kj", "<Esc>", { desc = "Exit insert mode" })

-- command mode
map("n", ";", ":", { desc = "CMD mode" })

--minty keymap
map("n", "<C-t>", function()
  require("plenary.reload").reload_module("minty.huefy")
  require("minty.huefy").open()
end, {})

-- =========================
-- CODEIUM (AI completion only)
-- =========================

-- Accept suggestion
map("i", "<C-l>", function()
  if vim.fn.exists("*codeium#Accept") == 1 then
    return vim.fn["codeium#Accept"]()
  end
end, { expr = true, silent = true, desc = "Codeium accept" })

-- Next suggestion
map("i", "<C-]>", function()
  if vim.fn.exists("*codeium#CycleCompletions") == 1 then
    return vim.fn
  end
end, { expr = true, silent = true, desc = "Codeium next" })

-- Previous suggestion
map("i", "<C-[>", function()
  if vim.fn.exists("*codeium#CycleCompletions") == 1 then
    return vim.fn["codeium#CycleCompletions"](-1)
  end
end, { expr = true, silent = true, desc = "Codeium previous" })

-- Clear suggestion
map("i", "<C-x>", function()
  if vim.fn.exists("*codeium#Clear") == 1 then
    return vim.fn["codeium#Clear"]()
  end
end, { expr = true, silent = true, desc = "Codeium clear" })

-- Resize vertical splits (Neo-tree included)
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -3<cr>", { desc = "Resize left" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +3<cr>", { desc = "Resize right" })

-- Optional: horizontal resizing too
vim.keymap.set("n", "<A-h>", "<cmd>vertical resize -3<cr>", { desc = "Resize left" })
vim.keymap.set("n", "<A-l>", "<cmd>vertical resize +3<cr>", { desc = "Resize right" })
