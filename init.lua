-- Bootstrap lazy.nvim, LazyVim and your plugins
-- Below require automatically load files in lua/config
require("config.lazy")

-- Update colorscheme last to ensure all color set correctly
vim.cmd("colorscheme catppuccin")
