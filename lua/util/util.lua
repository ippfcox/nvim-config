local M = {}

function M.merge_arrays(...)
  local result = {}
  for _, array in ipairs({ ... }) do
    if type(array) == "table" then
      for _, value in ipairs(array) do
        table.insert(result, value)
      end
    end
  end
  return result
end

return M
