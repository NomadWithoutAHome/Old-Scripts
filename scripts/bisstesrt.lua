local bossList = game:GetService("ReplicatedStorage").Assets.bosses
local bossPlatform = game:GetService("Workspace").steps


function find_specific_boss(boss)
    for _, platform in pairs(bossPlatform:GetChildren()) do
        if platform.Name == "bossLedge" and platform.Boss.bossName.Value == boss then
            return platform
        end
    end
end


local bossPosition = find_specific_boss('Yeti Giant')
local Event = game:GetService("ReplicatedStorage").Signals.snowballProjectile

while true do 
    task.wait()
repeat 
    if bossPosition.Boss:WaitForChild('Boss') and bossPosition.Boss:WaitForChild("Boss"):FindFirstChild("HumanoidRootPart") and bossPosition.Boss.Boss.Humanoid.Health > 0 then
        
        
        local position = bossPosition.Boss.Boss.HumanoidRootPart.CFrame.p;
        Event:FireServer('explodeLauncher', position)
        task.wait(1)
    end
until not bossPosition.Boss:FindFirstChild('Boss') or bossPosition.Boss.Boss:WaitForChild('Configuration').state.Value == 'dead' or bossPosition.Boss.Boss.Humanoid.Health < 0
end