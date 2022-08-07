local playerSleds = game:GetService("Workspace").sleighHolder
local thisPlayer = game:GetService("Players").LocalPlayer



local err, success = pcall(function() 
    

    
    for _, v in pairs(playerSleds:GetChildren()) do
     if v:IsA('Folder') and v.Name == thisPlayer.Name then
         playerFolder = v
         sled = v:GetChildren()[1]
     end
end

 
local handler = sled.Configurations.Fuel.Changed:Connect(function(value)
    task.wait()
    game:GetService("ReplicatedStorage").Signals.sleighEvent:FireServer("updateFuel", playerFolder:FindFirstChild(sled.Name), 100)
    end
)

end)
    
