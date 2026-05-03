-- ~/.config/nvim/lua/plugins/codeium.lua
return {
  "Exafunction/codeium.nvim",
  event = "InsertEnter",
  config = function()
    -- Disable default bindings (we define our own)
    vim.g.codeium_disable_bindings = 1

    require("codeium").setup({
      enable_chat = true,

      -- Optional: disable in sensitive filetypes
      filetypes = {
        gitcommit = false,
        markdown = true,
        text = false,
      },
    })
  end,
}
