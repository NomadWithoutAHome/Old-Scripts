local serverPlayers = game:GetService("Players")
local thisPlayer = game:GetService("Players").LocalPlayer

local toggle = true

function walkTo(plr)
    
    for _, player in next, serverPlayers:GetPlayers() do
        
        if player == game:GetService("Players")[plr] then
            
            afterDeath(player)

            repeat
                task.wait()
                thisPlayer.Character.Humanoid:MoveTo(player.Character.HumanoidRootPart.Position)
            until toggle == false
            
        end
    end
end

function afterDeath(plr)
    plr.Character.Humanoid.Died:Connect(
        function()
            plr.CharacterAdded:Connect(
                function(char)
                    local humanoid = char:WaitForChild("Humanoid")
                    walkTo(plr)
                end
            )
        end
    )
end


walkTo('cor')
