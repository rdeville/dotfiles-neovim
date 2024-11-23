return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    {
      "s1n7ax/nvim-window-picker",
      config = function()
        require("window-picker").setup({
          hint = "floating-big-letter",
          filter_rules = {
            include_current_win = false,
            autoselect_one = true,
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = {
                "aerial",
                "dbui",
                "neo-tree",
                "neo-tree-popup",
                "notify",
                "Outline",
                "trouble",
              },
              -- if the buffer type is one of following, the window will be ignored
              buftype = {
                "terminal",
                "quickfix",
                "aerial",
                "dbui",
                "neo-tree",
                "neo-tree-popup",
                "notify",
                "Outline",
                "trouble",
                "nofile"
              },
            },
          },
          -- You can pass in the highlight name or a table of content to set as
          -- highlight
          highlights = {
            statusline = {
              focused = {
                fg = "#ededed",
                bg = "#e35e4f",
                bold = true,
              },
              unfocused = {
                fg = "#ededed",
                bg = "#44cc41",
                bold = true,
              },
            },
            winbar = {
              focused = {
                fg = "#ededed",
                bg = "#e35e4f",
                bold = true,
              },
              unfocused = {
                fg = "#ededed",
                bg = "#44cc41",
                bold = true,
              },
            },
          },
        })
      end,
    },
  },
  opts = {
    window = {
      mappings = {
        ["l"] = "open_with_window_picker",
        ["w"] = "focus_preview",
      },
    },
  },
}
