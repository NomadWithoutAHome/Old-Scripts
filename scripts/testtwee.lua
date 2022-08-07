local gameCanes = game:GetService("Workspace").gameCandyCanes
local thisPlayer = game:GetService("Players").LocalPlayer

local TweenService = game:GetService("TweenService")

local Closest

local tweenInfo = TweenInfo.new(
	1, -- Time
	Enum.EasingStyle.Quad, -- EasingStyle
	Enum.EasingDirection.Out, -- EasingDirection
	0, -- RepeatCount (when less than zero the tween will loop indefinitely)
	false, -- Reverses (tween will reverse once reaching it's goal)
	0 -- DelayTime
)

for i,v in next, gameCanes:GetChildren() do
	if Closest == nil then
		Closest = v
	else
	   -- local distance = (thisPlayer.Character.HumanoidRootPart.CFrame.Position - v.cane.Position).magnitude
		if (thisPlayer.Character.HumanoidRootPart.CFrame.Position - v.cane.Position).magnitude < (Closest.cane.Position - thisPlayer.Character.HumanoidRootPart.CFrame.Position).magnitude then
			Closest = v
		end
	end
end
--thisPlayer.Character.HumanoidRootPart.CFrame = Closest.cane.CFrame

TweenService:Create(
            thisPlayer.Character.HumanoidRootPart,
            tweenInfo,
            {CFrame = Closest.cane.CFrame * CFrame.new(0,5,0)}
        ):Play()
