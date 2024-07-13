local clrs = require("colorscheme.definitions")
local highlight = {
  "IndentEven",
  "IndentOdd",
}

local hooks = require("ibl.hooks")
-- Create the highlight groups in the highlight setup hook, so they are reset
-- Every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "IndentEven", { fg = clrs.brown_600.hex })
  vim.api.nvim_set_hl(0, "IndentOdd", { fg = clrs.grey_600.hex })
  vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = clrs.red_900.hex })
end)

return {
  "lukas-reineke/indent-blankline.nvim",
  opts = {
    scope = { enabled = true },
    indent = {
      highlight = highlight,
      char = "▏",
    },
  },
}
