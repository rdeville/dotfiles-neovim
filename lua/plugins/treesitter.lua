return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
  {
    "ravsii/tree-sitter-d2",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    build = "make nvim-install",
  },
}
