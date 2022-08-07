local candy = game:GetService("Workspace").gameCandyCanes
local thisPlayer = game:GetService("Players").LocalPlayer

local TweenService = game:GetService("TweenService")

local canes = {}
local closest

for _, v in next, candy:GetChildren() do
    if v:FindFirstChild("cane") then
        table.insert(canes, v.Name)
    end
end

table.sort(
    canes,
    function(a, b)
        return a > b
    end
)

for i = 1, #canes do
    v = canes[i]
    if
        game:GetService("Workspace").gameCandyCanes[v]:FindFirstChild("cane") and
            game:GetService("Workspace").gameCandyCanes[v].cane.Transparency == 0
     then
        TweenService:Create(
            thisPlayer.Character.HumanoidRootPart,
            TweenInfo.new(1),
            {CFrame = game:GetService("Workspace").gameCandyCanes[v].cane.CFrame}
        ):Play()
        repeat
            task.wait()
        until game:GetService("Workspace").gameCandyCanes[v].cane.Transparency == 1
    end
end





    



