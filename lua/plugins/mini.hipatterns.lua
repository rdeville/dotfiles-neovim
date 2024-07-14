local clrs = require("colorscheme.definitions")
local material_clr_group = function(_, match)
  local clr_name = clrs[match]
  if clr_name == nil then
    return nil
  end
  return require("mini.hipatterns").compute_hex_color_group(
    clrs[match].hex,
    "fg"
  )
end

local hex_color = function(_, _, data)
  local match = data.full_match
  local r, g, b = match:sub(2, 2), match:sub(3, 3), match:sub(4, 4)
  local hex_color = "#" .. r .. r .. g .. g .. b .. b

  return require("mini.hipatterns").compute_hex_color_group(hex_color, "fg")
end

return {
  {
    "echasnovski/mini.hipatterns",
    opts = {
      highlighters = {
        material_color = { pattern = "%S+", group = material_clr_group },
        hex_color = { pattern = "()#%x%x%x()%f[^%x%w]", group = hex_color },
      },
    },
  },
}
