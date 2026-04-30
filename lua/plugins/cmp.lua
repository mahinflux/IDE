return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    -- Disable auto docs popup
    opts.view = {
      docs = {
        auto_open = false,
      },
    }

    -- Remove ghost text (inline gray suggestions)
    opts.experimental = {
      ghost_text = false,
    }

    -- Make completion less intrusive
    opts.completion = {
      completeopt = "menu,menuone,noselect",
    }

    -- Optional: remove borders for minimal look
    opts.window = {
      completion = { border = "none" },
      documentation = { border = "none" },
    }

    return opts
  end,
}
