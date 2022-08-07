local connections = getconnections(game.workspace.islands.time.clock.Changed)
for a, c in pairs(connections) do
    if c.Function then
        print(c.Function)
        local upvalues = debug.getupvalues(c.Function)
        for i, v in pairs(upvalues) do
            warn(i, v, typeof(v))
            debug.setupvalue(c.Function, 2, true)
            --debug.setupvalue(c.Function, 16, true)
            print(i, v, typeof(v))
        end
    end
end