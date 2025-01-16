return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        hcl_fmt = {
          command = "terragrunt",
          args = { "hclfmt", "-" },
          stdin = false,
        },
      },
        formatters_by_ft = {
          hcl = { "hcl_fmt" },
        },
    },
  },
}
