--- @class xiter
local xiter = {}

---@return xiter
xiter.new = function(tbl)
    return setmetatable(tbl, { __index = xiter })
end

---@param fn fun(v: any): any
---@return xiter
function xiter:map(fn)
    local result = {}
    for _, value in ipairs(self) do
        table.insert(result, fn(value))
    end
    return setmetatable(result, { __index = xiter })
end

---@return table
function xiter:totable()
    local result = {}
    for _, value in ipairs(self) do
        table.insert(result, value)
    end
    return result
end

return xiter
