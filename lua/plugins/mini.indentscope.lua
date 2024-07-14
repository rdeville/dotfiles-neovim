-- vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = clrs.red_A200.hex })
return {
  "echasnovski/mini.indentscope",
  opts = {
    symbol = "▍",
    draw = {
      delay = 250,
    },
  },
}
