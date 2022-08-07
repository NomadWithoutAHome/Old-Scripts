local gameCanes = game:GetService("Workspace").gameCandyCanes
local thisPlayer = game:GetService("Players").LocalPlayer

while true do
    task.wait()
    candy = gameCanes:GetChildren()

    pcall(
        function()
            for i = 1, #candy do
                v = candy[i]
                if v:FindFirstChild("cane") and v.cane.Transparency == 0 then
                    thisPlayer.Character.HumanoidRootPart.CFrame = v.cane.CFrame * CFrame.new(0, 4, 0)
                    repeat
                        task.wait()
                    until v.cane.Transparency == 1
                end
            end
        end
    )
end








