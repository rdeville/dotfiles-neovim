local builtin = require("telescope.builtin")

return {
  {
    -- https://github.com/nvim-telescope/telescope.nvim
    "nvim-telescope/telescope.nvim",
    dependencies = {
      -- https://github.com/nvim-lua/plenary.nvim
      "nvim-lua/plenary.nvim",
    },
    keys = {
      {
        "<leader>fg",
        function()
          builtin.live_grep()
        end,
        desc = "Grep files in directory",
      },
      {
        "<leader>fl",
        function()
          builtin.current_buffer_fuzzy_find()
        end,
        desc = "Grep in current buffer",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          prompt_position = "top",
          preview_width = 100,
        },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
