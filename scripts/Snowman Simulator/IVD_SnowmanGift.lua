local thisPlayer = game:GetService('Players').LocalPlayer
local giftLocations = game:GetService("Workspace").giftSpawns


for _, v in pairs(giftLocations:GetDescendants()) do
    if v:IsA("StringValue") and v.Name == "ownerName" and v.Value == thisPlayer.Name and v.Parent.Name == "snowmanGift" then
        thisPlayer.Character.HumanoidRootPart.CFrame = v.Parent.lid.box.CFrame * CFrame.new(0, 20, 0)
        task.wait(1)
        fireproximityprompt(v.Parent.hitbox.proxGui.ProximityPrompt, 10)
    end
end

    