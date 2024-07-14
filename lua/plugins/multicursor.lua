return {
  "smoka7/multicursors.nvim",
  lazy = false,
  dependencies = {
    "nvimtools/hydra.nvim",
  },
  opts = {
    hint_config = {
      float_opts = {
        border = "single",
      },
    },
  },
  keys = {
    {
      "<C-n>",
      "<cmd>MCstart<cr>",
      desc = "Create Selection",
    },
  },
}
