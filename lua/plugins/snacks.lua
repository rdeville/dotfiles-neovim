local highlight = {
  "RainbowDelimiterRed",
  "RainbowDelimiterYellow",
  "RainbowDelimiterBlue",
  "RainbowDelimiterOrange",
  "RainbowDelimiterGreen",
  "RainbowDelimiterViolet",
  "RainbowDelimiterCyan",
}

return {
  "snacks.nvim",
  opts = {
    indent = {
      indent = {
        hl = highlight,
        char = "▏",
      },
      animate = {
        enabled = false,
      },
      scope = {
        hl = "RainbowDelimiterRed",
        char = "▍",
      },
    },
  },
  keys = {
    { "<leader>e", desc = "Explorer Snacks (root dir)", remap = false },
    { "<leader>E", desc = "Explorer Snacks (cwd)", remap = false },
  },
}
