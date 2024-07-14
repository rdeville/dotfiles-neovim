return {
  "stevearc/aerial.nvim",
  -- Call the setup function to change the default behavior
  config = function()
    require("aerial").setup({
      keymaps = {
        ["j"] = "actions.down_and_scroll",
        ["k"] = "actions.up_and_scroll",
        ["<C-j>"] = false,
        ["<C-k>"] = false,
      },
    })
  end,
}
