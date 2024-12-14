local clr = require("colorscheme.definitions")
vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", {fg = clr.red_500.hex})
vim.api.nvim_set_hl(0, "MiniIndentscopeSymbolOff", {fg = "None"})

-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- AUTOCMDS
-- Deactivate autowrap and autospell on text/markdown files set by LazyVim
-- I DON'T LIKE WRAP !
vim.api.nvim_clear_autocmds({ group = "lazyvim_wrap_spell" })

vim.api.nvim_create_autocmd({ "VimLeavePre" }, {
  group = augroup("close_edgy"),
  callback = function()
    require("edgy").close()
  end,
})

vim.api.nvim_create_autocmd({ "WinEnter" }, {
  group = augroup("resize_window"),
  callback = function()
    vim.o.winwidth = 100
    vim.o.winminwidth = 10
    -- Make ActiveWindow not transparent
    vim.api.nvim_set_hl(0, "ActiveWindow", { bg = "#111111" })
    vim.api.nvim_set_hl(0, "InactiveWindow", { bg = "None" })
    vim.opt.winhighlight = "Normal:ActiveWindow,NormalNC:InactiveWindow"
  end,
})

-- COMMAND
vim.api.nvim_create_user_command("Bclose", function()
  vim.cmd("exec 'bp | sp | bn | bd'")
end, {})
