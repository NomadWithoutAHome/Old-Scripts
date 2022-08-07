local playerSleds = game:GetService("Workspace").sleighHolder
local thisPlayer = game:GetService("Players").LocalPlayer


local err, success = pcall(function()
for _, v in pairs(playerSleds:GetChildren()) do
    if v:IsA("Folder") and v.Name == thisPlayer.Name then
        playerFolder = v
    end
end

sledConnection =
    playerFolder.ChildAdded:Connect(
    function(playerSleds)
        handler =
            playerSleds.Parent:GetChildren()[1]:WaitForChild("Configurations").Fuel.Changed:Connect(
            function()
                task.wait()
                game:GetService("ReplicatedStorage").Signals.sleighEvent:FireServer(
                    "updateFuel",
                    playerFolder:FindFirstChild(playerSleds.Name),
                    100
                )
            end
        )
    end
)

playerFolder.ChildRemoved:Connect(
    function()
        if handler.Connected then
            handler:Disconnect()
            warn(handler.Connected)
        end
    end
)
end)
