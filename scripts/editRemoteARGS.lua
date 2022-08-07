local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)
  local args = {...}
  if getnamecallmethod() == 'FireServer' and args[1] == 'updateFuel' then
    args[3] = 100
    print(args[2])
  end
  return old(self, unpack(args))
end)
setreadonly(mt, true)