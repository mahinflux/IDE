return {
  "NickvanDyke/opencode.nvim",
  event = "VeryLazy", -- This makes sure it doesn't slow down your startup
  dependencies = {
    { "folke/snacks.nvim", opts = { input = { enabled = true } } },
  },
  config = function()
    -- Global options
    vim.g.opencode_opts = {}
    vim.opt.autoread = true

    -- Your Custom Keymaps
    local map = vim.keymap.set

    map("n", "<leader>ot", function()
      require("opencode").toggle()
    end, { desc = "Toggle embedded" })
    map("n", "<leader>oa", function()
      require("opencode").ask("@cursor: ")
    end, { desc = "Ask about this" })
    map("v", "<leader>oa", function()
      require("opencode").ask("@selection: ")
    end, { desc = "Ask about selection" })
    map("n", "<leader>o+", function()
      require("opencode").prompt("@buffer", { append = true })
    end, { desc = "Add buffer" })
    map("v", "<leader>o+", function()
      require("opencode").prompt("@selection", { append = true })
    end, { desc = "Add selection" })
    map("n", "<leader>oe", function()
      require("opencode").prompt("Explain @cursor and its context")
    end, { desc = "Explain code" })
    map("n", "<leader>on", function()
      require("opencode").command("session_new")
    end, { desc = "New session" })

    -- Scroll controls
    map("n", "<S-C-u>", function()
      require("opencode").command("messages_half_page_up")
    end, { desc = "Msg Up" })
    map("n", "<S-C-d>", function()
      require("opencode").command("messages_half_page_down")
    end, { desc = "Msg Down" })

    map({ "n", "v" }, "<leader>os", function()
      require("opencode").select()
    end, { desc = "Select prompt" })
  end,
}
