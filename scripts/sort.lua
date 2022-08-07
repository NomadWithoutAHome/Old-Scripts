local candy = game:GetService("Workspace").gameCandyCanes
local thisPlayer = game

local canes = {}

for _, v in next, candy:GetChildren() do
    if  v:FindFirstChild("cane") then
        table.insert(canes, v.Name)
    end
end


table.sort(canes, function(a, b)
    return a > b 
end)

for i = 1, #canes do
    v = canes[i]
    print(game:GetService("Workspace").gameCandyCanes[v].cane)
end




    



