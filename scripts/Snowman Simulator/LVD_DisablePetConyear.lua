 local con = getconnections(game.ReplicatedStorage.Signals.presentEffectEvent.OnClientEvent)
for i, connection in pairs(con) do
    connection:Enable()
    for a, b in pairs(connection) do
        print(a, b)
    end
end
