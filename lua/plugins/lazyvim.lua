return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        buffers = "transparent",
      },
    },
  },
  { "LazyVim/LazyVim" },
  -- Import Extra Lazy Vim
  -- UI
  { import = "lazyvim.plugins.extras.ui.treesitter-context" },

  -- CODING
  { import = "lazyvim.plugins.extras.coding.luasnip" },
  { import = "lazyvim.plugins.extras.coding.mini-comment" },
  { import = "lazyvim.plugins.extras.coding.mini-surround" },
  { import = "lazyvim.plugins.extras.coding.neogen" },
  { import = "lazyvim.plugins.extras.coding.yanky" },

  -- DAP (Debug Adapter Protocol)
  { import = "lazyvim.plugins.extras.dap.core" },
  { import = "lazyvim.plugins.extras.dap.nlua" },

  -- EDITOR
  { import = "lazyvim.plugins.extras.editor.aerial" },
  { import = "lazyvim.plugins.extras.editor.illuminate" },
  { import = "lazyvim.plugins.extras.editor.inc-rename" },
  { import = "lazyvim.plugins.extras.editor.mini-diff" },
  { import = "lazyvim.plugins.extras.editor.navic" },
  { import = "lazyvim.plugins.extras.editor.overseer" },
  { import = "lazyvim.plugins.extras.editor.refactoring" },
  { import = "lazyvim.plugins.extras.editor.telescope" },

  -- FORMATTING
  { import = "lazyvim.plugins.extras.formatting.prettier" },
  { import = "lazyvim.plugins.extras.formatting.black" },

  -- LANG
  { import = "lazyvim.plugins.extras.lang.docker" },
  { import = "lazyvim.plugins.extras.lang.git" },
  { import = "lazyvim.plugins.extras.lang.helm" },
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.markdown" },
  { import = "lazyvim.plugins.extras.lang.nix" },
  { import = "lazyvim.plugins.extras.lang.python" },
  { import = "lazyvim.plugins.extras.lang.sql" },
  { import = "lazyvim.plugins.extras.lang.terraform" },
  { import = "lazyvim.plugins.extras.lang.tex" },
  { import = "lazyvim.plugins.extras.lang.toml" },
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.vue" },
  { import = "lazyvim.plugins.extras.lang.yaml" },

  -- LINT
  { import = "lazyvim.plugins.extras.linting.eslint" },

  -- LSP
  { import = "lazyvim.plugins.extras.lsp.neoconf" },
  { import = "lazyvim.plugins.extras.lsp.none-ls" },

  -- TEST
  { import = "lazyvim.plugins.extras.test.core" },

  -- UTILS
  { import = "lazyvim.plugins.extras.util.dot" },
  { import = "lazyvim.plugins.extras.util.mini-hipatterns" },
  { import = "lazyvim.plugins.extras.util.octo" },
  { import = "lazyvim.plugins.extras.util.rest" },
}
