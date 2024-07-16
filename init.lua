-- Bootstrap lazy.nvim, LazyVim and your plugins
-- Below require automatically load files in lua/config
require("config.lazy")

require("lspconfig").lua_ls.setup({
  on_init = function(client)
    local path = client.workspace_folders[1].name
    if
      vim.loop.fs_stat(path .. "/.luarc.json")
      or vim.loop.fs_stat(path .. "/.luarc.jsonc")
    then
      return
    end

    client.config.settings.Lua =
      vim.tbl_deep_extend("force", client.config.settings.Lua, {
        runtime = {
          version = "LuaJIT",
        },
        workspace = {
          checkThirdParty = false,
          library = {
            vim.env.VIMRUNTIME,
          },
        },
      })
  end,
  settings = {
    Lua = {},
  },
})

-- Update colorscheme last to ensure all color set correctly
vim.cmd("colorscheme tokyonight")
