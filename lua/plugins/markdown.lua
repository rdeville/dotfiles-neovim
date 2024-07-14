return {
  "hedyhli/markdown-toc.nvim",
  ft = "markdown",
  cmd = { "Mtoc" },
  opts = {
    headings = {
      -- Does not include headings before the ToC
      before_toc = false,
    },

    fences = {
      enabled = true,
      start_text = "mdtoc-start",
      end_text = "mdtoc-end",
    },

    toc_list = {
      -- Use indent size specified in buffer opption
      indent_size = function()
        return vim.bo.shiftwidth
      end,
      -- Ensure in TOC, title are in Title Case
      item_formatter = function(item, fmtstr)
        local default_formatter =
          require("mtoc.config").defaults.toc_list.item_formatter
        item.name = item.name:gsub("(%a)([%w_']*)", function(a, b)
          return a:upper() .. b:lower()
        end)
        return default_formatter(item, fmtstr)
      end,
    },
  },
}
