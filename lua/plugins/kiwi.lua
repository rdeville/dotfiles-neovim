local wikis_name = {
  { name = "perso", key_suffix = "p" },
  { name = "work", key_suffix = "w" },
}

local function opts()
  local out = {}
  for _, wiki in pairs(wikis_name) do
    local path = os.getenv("HOME") .. "/" .. wiki.name
    local lib = require("lib")
    if lib.is_dir(path .. "/") then
      table.insert(out, {
        name = wiki.name,
        path = path,
      })
    end
  end
  return out
end

local function keys()
  local out = {
    "<leader>T",
    ':lua require("kiwi").todo.toggle()<cr>',
    desc = "Toggle Markdown Task",
  }
  for _, wiki in pairs(wikis_name) do
    local lib = require("lib")
    local path = os.getenv("HOME") .. "/" .. wiki.name
    if lib.is_dir(path .. "/") then
      table.insert(out, {
        "<leader>w" .. wiki.key_suffix,
        ':lua require("kiwi").open_wiki_index()<cr>',
        desc = "Open Wiki " .. wiki.name,
      })
    end
  end
  return out
end

return {
  "serenevoid/kiwi.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = opts(),
  keys = keys(),
}
