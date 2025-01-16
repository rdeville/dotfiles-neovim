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
}
