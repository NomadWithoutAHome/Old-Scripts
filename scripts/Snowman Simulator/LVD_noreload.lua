local pershot = 2


local z = 0
for _, v in next, getgc() do
    if type(v) == "function" then
        if debug.getinfo(v).name == "reload" then
            hookfunction(v, function()
                z += 1
                if z == pershot then
                    task.wait()
                    z = 0
                end
                return nil
            end)
        end
    end
end