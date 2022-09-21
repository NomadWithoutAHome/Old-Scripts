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
    local bossPosition = find_specific_boss('Yeti Giant')
    if bossPosition:FindFirstChild("Boss") and bossPosition.Boss:WaitForChild("Boss"):FindFirstChild("HumanoidRootPart") then
        local Event = game.ReplicatedStorage.Signals.bossReward

        spawn(
            function()
                Event:FireServer("hit", 'Yeti Giant', game:GetService("Workspace").steps.bossLedge.Boss.Boss.Humanoid)
                task.wait()
            end
        )
    end
end

function boss_auto_kill()
    local bossPosition = find_specific_boss('Yeti Giant')
    local Event = game:GetService("ReplicatedStorage").Signals.snowballProjectile
    while true do
        repeat 
            task.wait()
            if bossPosition.Boss:WaitForChild('Boss') and bossPosition.Boss:WaitForChild("Boss"):FindFirstChild("HumanoidRootPart") and bossPosition.Boss.Boss.Humanoid.Health > 0 then
                local position = bossPosition.Boss.Boss.HumanoidRootPart.CFrame.p;
                Event:FireServer('explodeLauncher', position)
                task.wait(1)
                end
        until not bossPosition.Boss:FindFirstChild('Boss') or bossPosition.Boss.Boss:WaitForChild('Configuration').state.Value == 'dead' or  bossPosition.Boss.Boss.Humanoid.Health < 0
    end
end

