for _, v in next, getgc() do
    if type(v) == "function" then
        if debug.getinfo(v).name == "onJumpRequest" then
            debug.setupvalue(v, 5, math.huge)
        end
    end
end
