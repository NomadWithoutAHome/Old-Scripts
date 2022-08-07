local CollectionService = game:GetService("CollectionService")
local tag = "minion"

for _, minions in pairs(CollectionService:GetTagged(tag)) do
    if not minions:FindFirstChild("isDead") then
        repeat
            game:GetService("ReplicatedStorage").Signals.minionHelper:FireServer("minionHit", minions)
            task.wait()
        until minions:FindFirstChild("isDead")
    end
     print(minions)
end





