---@diagnostic disable: undefined-global
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init

-- DO NOT USE `LazyVim.safe_keymap_set` IN YOUR OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = vim.keymap.set
local del = vim.keymap.del

-- # Delete/Replace some LazyVim keymap i'll not use
--------------------------------------------------------------------------------
-- stylua: ignore start
-- Resize window using <ctrl> arrow keys (I' dont use arrow)
del("n", "<C-Up>")
del("n", "<C-Down>")
del("n", "<C-Right>")
del("n", "<C-Left>")
-- Replace above with <ctrl> + capital(hjkl)
map("n", "<C-S-k>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-S-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-S-l>", "<cmd>vert resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-S-h>", "<cmd>vert resize +2<cr>", { desc = "Increase Window Width" })

-- Buffers
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
-- As I'm (for now) mainly in french keyboard layout, I do not use key `[` nor
-- `]` to move as their are hard to press (AltGr + <Key>)
del("n", "[b") -- { desc = "Prev Buffer" }
del("n", "]b") -- { desc = "Next Buffer" }
del("n", "<leader>bb") -- { desc = "Switch to Other Buffer" })
del("n", "<leader>`") -- { desc = "Switch to Other Buffer" })
-- I prefer bc and BC (Buffer Close)
del("n", "<leader>bd") -- { desc = "Delete Buffer" })
del("n", "<leader>bD") -- { desc = "Delete Buffer and Window" })
map("n", "<leader>bc", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
map("n", "<leader>bC", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- Add undo break-points (I'll never use it)
del("i", ",")
del("i", ".")
del("i", ";")

-- Save file (I prefer <leader>w, no need to press two keys) and disable it in
-- all mode except normal
del({ "i", "x", "n", "s" }, "<C-s>")
map("n", "<leader>w", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Commenting (I prefer not use `g` but leader as prefix)
del("n", "gco")
del("n", "gcO")
map("n", "<leader>co", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
map("n", "<leader>cO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

-- New file (I now I'll never use it)
del("n", "<leader>fn") -- { desc = "New File" })

-- Diagnostic
-- Redeclare LazyVim function diagnostic_goto() as this function is declared
-- locally in default LazyVim keymaps.
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
-- map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
-- Deactivate shortcut based on `[` and `]` as I'm mainly in french keyboard
-- layout for now and this keys are hard to get.
del("n", "]d") -- { desc = "Next Diagnostic" }
del("n", "[d") -- { desc = "Prev Diagnostic" }
del("n", "]e") -- { desc = "Next Error" }
del("n", "[e") -- { desc = "Prev Error" }
del("n", "]w") -- { desc = "Next Warning" }
del("n", "[w") -- { desc = "Prev Warning" }
-- I prefer using leader
map("n", "<leader>j", diagnostic_goto(true), { desc = "Next Diagnostic" })
map("n", "<leader>k", diagnostic_goto(false), { desc = "Prev Diagnostic" })

-- Toggle options
-- Git / LazyGit
map("n", "<leader>gb", "<cmd>GitBlameToggle<cr>", { desc = "Toggle Git Blame" })

-- Floating terminal
local lazyterm = function() LazyVim.terminal(nil, { cwd = LazyVim.root() }) end
del("n", "<leader>fT") -- { desc = "Terminal (Root Dir)" })
del("n", "<leader>ft") -- { desc = "Terminal (cwd)" })
map("n", "T", lazyterm, { desc = "Terminal (Root Dir)" })
-- Terminal Mappings
map("t", "T", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- Windows
-- I know I'll never use it, so disable mapping
del("n", "<leader>-")
del("n", "<leader>|")

map("n", "<leader>sp", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>vs", "<C-W>v", { desc = "Split Window Right", remap = true })

-- Tabs
-- Remap some tab shortcuts
del("n", "<leader><tab>]")
map("n", "<leader><tab>j", "<cmd>tabnext<cr>", { desc = "Next Tab" })
del("n", "<leader><tab>d")
map("n", "<leader><tab>c", "<cmd>tabclose<cr>", { desc = "Close Tab" })
del("n", "<leader><tab>[")
map("n", "<leader><tab>k", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- # Moving Around, Tabs, Windows and Buffers
-- Another way to move between tabs, use Shift+Alt+<Direction> to change active one
map("n", "<C-M-h>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
map("n", "<C-M-l>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<C-M-c>", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<C-M-n>", "<cmd>tabnew<cr>", { desc = "New Tab" })

-- stylua: ignore end

-- Show treesitter capture group for textobject under cursor.
-- Useful when creating a colorscheme
map("n", "<C-e>", function()
  require("notify")(
    "Identifier: "
      .. vim.inspect(vim.treesitter.get_captures_at_cursor(0))
      .. "\n"
      .. "Buffer Filetype: "
      .. vim.o.filetype
  )
end, { desc = "Show Identifier Under Cursor" })
