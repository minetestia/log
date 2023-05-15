local mt = minetest

---@alias mf.LogLevel mt.LogLevel|0|1|2|3|4|5

local log_levels = {
  [0] = "none",
  [1] = "verbose",
  [2] = "info",
  [3] = "action",
  [4] = "warning",
  [5] = "error",
}

---@param path string
local function require(path)
  return dofile(mt.get_modpath(mt.get_current_modname()) .. "/" .. path)
end

local inspect = require "inspect.lua"

---@param vars table
---@param depth integer|nil Default: `0`.
---@param level mf.LogLevel|nil Default: `0`.
function log(vars, depth, level)
  level = level or 0
  if type(level) == "number" then level = log_levels[level] end
  level = level --[[@as string]]

  depth = depth or 0
  if depth == 0 then depth = math.huge end

  local l = mt.log
  local d = { depth = depth }
  for name, var in pairs(vars) do
    l(level, ("[%s]: %s \n\n"):format(inspect(name, d), inspect(var, d)))
  end
end
