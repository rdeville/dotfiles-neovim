return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- TODO: Remove this temp fix while this PR is merged:
    -- https://github.com/LazyVim/LazyVim/issues/6355
    opts = function(_, opts)
      local module = require("catppuccin.groups.integrations.bufferline")
      if module then
        module.get = module.get_theme
      end
      return opts
    end,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        buffers = "transparent",
      },
    },
  },
}
