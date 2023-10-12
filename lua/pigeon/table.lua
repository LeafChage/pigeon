local xiter = require("pigeon.iter")

--- @class xtable : table
local xtable = {}

---@param a table
---@return xtable
xtable.wrap = function(a)
    return setmetatable(a, { __index = xtable })
end

---@param a table
---@param b table
---@return xtable
xtable.concat = function(a, b)
    local result = {}
    for _, value in ipairs(a) do
        result[#result + 1] = value
    end
    for _, value in ipairs(b) do
        result[#result + 1] = value
    end
    return setmetatable(result, { __index = xtable })
end

---@param a table
---@return xiter
xtable.iter = function(a)
    return xiter.new(a)
end

return xtable
