-- To add your custom Wiki, you can add following lines to a file in
-- ~/.local/share/nvim/init.lua
-- local kiwiConfig = {
--   {
--     -- Name of the wiki
--     name = "work",
--     -- Path to the wiki, relative to $HOME
--     path = "cloud/user-pro",
--     -- Shortcut prefixed with leader to go to this Wiki
--     shortcut = "iw",
--     -- Hostnames that will have a Wiki
--     hostnames = {
--       "work-station",
--     },
--   },
--   {
--     -- Name of the wiki
--     name = "perso",
--     -- Path to the wiki, relative to $HOME
--     path = "cloud/user",
--     -- Shortcut prefixed with leader to go to this Wiki
--     shortcut = "ip",
--     -- Hostnames that will have a Wiki
--     hostnames = {
--       "work-station",
--       "perso-laptop",
--       "perso-station",
--     },
--   },
-- }

-- Check user custom file exists, if not, do not load plugin
local kiwiConfigPath = vim.fn.stdpath("data") .. "/kiwi.lua"
local file = io.open(kiwiConfigPath, "r")
if not file then
  io.close(file)
  return {}
else
  io.close(file)
end
local kiwiConfig = loadfile(kiwiConfigPath)()

local function strInTable(tbl, str)
  for _, value in ipairs(tbl) do
    if value == str then
      return true
    end
  end
  return false
end

local function opts()
  local out = {}

  for _, value in ipairs(kiwiConfig) do
    if strInTable(value.hostnames, vim.fn.hostname()) then
      table.insert(out,
        {
          name = value.name,
          path = value.path,
        }
      )
    end
  end
  return out
end

local function keys()
  local out = {}
  for _, value in ipairs(kiwiConfig) do
    if strInTable(value.hostnames, vim.fn.hostname()) then
      table.insert(out, {
        "<leader>" .. value.shortcut,
        ':lua require("kiwi").open_wiki_index("' .. value.name .. '")<cr>',
        desc = "Open " .. value.name .. " Wiki index",
      })
    end
  end
  return out
end

return {
  "serenevoid/kiwi.nvim",
  opts = opts(),
  keys = keys(),
  lazy = true,
}
