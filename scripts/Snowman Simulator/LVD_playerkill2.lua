local thisPlayer = game:GetService('Players').LocalPlayer
local remotePlayer = game:GetService('Players')
local remote = game:GetService("ReplicatedStorage").Signals.snowballProjectile
local randomVector = Vector3.new(math.random(5000), y, math.random(5000))


for _, player in next, remotePlayer:GetPlayers() do
    if player.Name ~= thisPlayer.Name and player.localData.playerSettings.pvp.value == true then
        print(player.Name)
        player.Character:WaitForChild("Humanoid").Died:Connect(function()
        print(player.Name .. " has died!")
        end)
        --thisPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
        game.Workspace.Camera.CameraSubject = player.Character.Humanoid
        repeat
            task.wait(2)
            remote:FireServer('pvpHit', player, randomVector)
        until player.Character.Humanoid.Health == 0 
        game.Workspace.Camera.CameraSubject = thisPlayer.Character.Humanoid
    
        
    end
end



