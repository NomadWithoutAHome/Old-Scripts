local thisPlayer = game:GetService("Players").LocalPlayer
local bossList = game:GetService("ReplicatedStorage").Assets.bosses
local bossPlatform = game:GetService("Workspace").steps



function teleport_to_boss(boss)
    local bossPosition = find_specific_boss(boss)
    thisPlayer.Character.HumanoidRootPart.CFrame = bossPosition.portal.teleportSpot.CFrame
end


function find_specific_boss(boss)
    for _, platform in pairs(bossPlatform:GetChildren()) do
        if platform.Name == "bossLedge" and platform.Boss.bossName.Value == boss then
            return platform
        end
    end
end

function autoReward()
    local bossPosition = find_specific_boss(boss)
    if bossPosition:FindFirstChild("Boss") and bossPosition.Boss:WaitForChild("Boss"):FindFirstChild("HumanoidRootPart") then
        local Event = game.ReplicatedStorage.Signals.bossReward

        spawn(
            function()
                Event:FireServer("hit", boss, game:GetService("Workspace").steps.bossLedge.Boss.Boss.Humanoid)
                task.wait()
            end
        )
    end
end

teleport_to_boss('Yeti Giant')