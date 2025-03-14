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
                "nofile",
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
    sources = { "filesystem", "buffers", "git_status" },
    window = {
      mappings = {
        ["l"] = "open_with_window_picker",
        ["w"] = "focus_preview",
        ["h"] = "close_node",
        ["<space>"] = "none",
        ["Y"] = {
          function(state)
            local node = state.tree:get_node()
            local path = node:get_id()
            vim.fn.setreg("+", path, "c")
          end,
          desc = "Copy Path to Clipboard",
        },
        ["O"] = {
          function(state)
            require("lazy.util").open(
              state.tree:get_node().path,
              { system = true }
            )
          end,
          desc = "Open with System Application",
        },
        ["P"] = { "toggle_preview", config = { use_float = false } },
      },
    },

    open_files_do_not_replace_types = {
      "terminal",
      "Trouble",
      "trouble",
      "qf",
      "Outline",
    },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
    },
    default_component_configs = {
      indent = {
        with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
      git_status = {
        symbols = {
          unstaged = "󰄱",
          staged = "󰱒",
        },
      },
    },
    keys = {
      {
        "<leader>fe",
        function()
          require("neo-tree.command").execute({
            toggle = true,
            dir = LazyVim.root(),
          })
        end,
        desc = "Explorer NeoTree (Root Dir)",
      },
      {
        "<leader>fE",
        function()
          require("neo-tree.command").execute({
            toggle = true,
            dir = vim.uv.cwd(),
          })
        end,
        desc = "Explorer NeoTree (cwd)",
      },
      {
        "<leader>e",
        "<leader>fe",
        desc = "Explorer NeoTree (Root Dir)",
        remap = true,
      },
      {
        "<leader>E",
        "<leader>fE",
        desc = "Explorer NeoTree (cwd)",
        remap = true,
      },
    },
  },
}
