local giftLocations = game:GetService("Workspace").giftSpawns
local thisPlayer = game:GetService('Players').LocalPlayer



function giftFarm()
    for _, v in pairs(giftLocations:GetDescendants()) do
        if v and  v:IsA("ProximityPrompt") then
            thisPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
            wait(1)
            fireproximityprompt(v, 10)
            v.Parent.Parent:WaitForChild("unwrapProgressBar", 5)
            repeat
                wait()
            until not v.Parent.Parent:FindFirstChild("unwrapProgressBar")
        end
    end
end

while true do 
    task.wait(1)
    giftFarm()
end