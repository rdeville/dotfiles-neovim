return {
  "stevearc/aerial.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  -- Call the setup function to change the default behavior
  config = function()
    require("aerial").setup({
      autojump = false,
      backends = { "lsp", "treesitter", "markdown", "asciidoc", "man" },
      filter_kind = false,
      keymaps = {
        ["j"] = "actions.down_and_scroll",
        ["k"] = "actions.up_and_scroll",
        ["<C-j>"] = false,
        ["<C-k>"] = false,
      },
    })
  end,
}
