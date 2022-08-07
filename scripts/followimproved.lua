local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayers = game:GetService("Players")

_G.toggle = true

function walkTo(plr)
    
    if _G.toggle then

	for _, player in next, otherPlayers:GetPlayers() do

		if player.DisplayName:lower() == plr:lower() then

			afterDeath(player)

			repeat

				task.wait()

				thisPlayer.Character.Humanoid:MoveTo(player.Character.HumanoidRootPart.Position)

			until _G.toggle == false

			player.Character.Humanoid.StateChanged:Connect(function(old, new) 

				if _G.toggle then 

					if new == Enum.HumanoidStateType.Jumping then

						thisPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						
					end
				end
			end)
		end
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

--walkTo('mimi')