return {
  "Exafunction/codeium.nvim",
  event = "InsertEnter",

  config = function()
    require("codeium").setup({
      enable_chat = true,

      -- correct format (NOT boolean)
      virtual_text = {
        enabled = true,
      },

      -- avoid cmp issues completely
      enable_cmp_source = false,
    })
  end,
}
