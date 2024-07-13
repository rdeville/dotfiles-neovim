local M = {}

M.is_dir = function(path)
  local node = io.open(path, "r")
  if node then
    local _, _, code = node:read(1)
    node:close()
    return code == 21
  end
  return false
end

return M
