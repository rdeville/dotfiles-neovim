return {
  -- Sops edit tools
  "lemarsu/sops.nvim",
  opts = function()
    local config = require 'sops.config'
    -- Declare environment variables followed when calling sops.
    -- PATH and HOME are always followed.
    config.follow = { 'SOPS_AGE_KEY' }
  end,
}
