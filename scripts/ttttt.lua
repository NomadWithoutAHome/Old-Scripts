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

while true do 
    task.wait(2)
if bossPosition.Boss:WaitForChild('Boss') then
    print('found')
else
    print('gone')
end
end
        