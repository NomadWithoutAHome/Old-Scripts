local NolixIsBest = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local targetName = Instance.new("TextBox")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Title = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Toggle = Instance.new("TextButton")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local targetHelper = Instance.new("TextBox")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")


NolixIsBest.Name = "NolixIsBest"
NolixIsBest.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
NolixIsBest.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = NolixIsBest
main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
main.BorderSizePixel = 5
main.Position = UDim2.new(0.0699925572, 0, 0.742331326, 0)
main.Size = UDim2.new(0.130208328, 0, 0.118518516, 0)

targetName.Name = "targetName"
targetName.Parent = main
targetName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
targetName.BackgroundTransparency = 1.000
targetName.Position = UDim2.new(0.0240000021, 0, 0.25, 0)
targetName.Size = UDim2.new(0.948000133, 0, 0.359375, 0)
targetName.Font = Enum.Font.GothamBlack
targetName.PlaceholderText = "Enter Target Name"
targetName.Text = ""
targetName.TextColor3 = Color3.fromRGB(171, 171, 171)
targetName.TextScaled = true
targetName.TextSize = 14.000
targetName.TextWrapped = true
targetName.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint.Parent = targetName
UITextSizeConstraint.MaxTextSize = 28

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1.00000012, 0, 0.25, 0)
Title.Font = Enum.Font.GothamBlack
Title.Text = "Follow Script"
Title.TextColor3 = Color3.fromRGB(171, 171, 171)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

UITextSizeConstraint_2.Parent = Title
UITextSizeConstraint_2.MaxTextSize = 32

Toggle.Name = "Toggle"
Toggle.Parent = main
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0.200000018, 0, 0.6328125, 0)
Toggle.Size = UDim2.new(0.600000024, 0, 0.25, 0)
Toggle.Font = Enum.Font.GothamBlack
Toggle.Text = "OFF"
Toggle.TextColor3 = Color3.fromRGB(127, 0, 19)
Toggle.TextScaled = true
Toggle.TextSize = 14.000
Toggle.TextWrapped = true

UITextSizeConstraint_3.Parent = Toggle
UITextSizeConstraint_3.MaxTextSize = 32

targetHelper.Name = "targetHelper"
targetHelper.Parent = main
targetHelper.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
targetHelper.BackgroundTransparency = 1.000
targetHelper.Position = UDim2.new(0.0240000021, 0, 0.25, 0)
targetHelper.Size = UDim2.new(0.948000133, 0, 0.359375, 0)
targetHelper.ZIndex = -1
targetHelper.Font = Enum.Font.GothamBlack
targetHelper.Text = ""
targetHelper.TextColor3 = Color3.fromRGB(171, 171, 171)
targetHelper.TextScaled = true
targetHelper.TextSize = 14.000
targetHelper.TextTransparency = 0.650
targetHelper.TextWrapped = true
targetHelper.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_4.Parent = targetHelper
UITextSizeConstraint_4.MaxTextSize = 28

UIAspectRatioConstraint.Parent = NolixIsBest
UIAspectRatioConstraint.AspectRatio = 1.778

local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayers = game:GetService("Players")
local buttonTog = Toggle
	
local debounce = false

_G.toggle = false

local targetBox = targetName
local targetHelper = targetHelper

local key = game:GetService("UserInputService")

function autoComplete(input)
    local players = game.Players:GetPlayers()
    local results = {}

    for _, player in pairs(players) do
        if player.DisplayName:sub(1, #input):lower() == input:lower() then
            table.insert(results, player.DisplayName)
        end
    end

    if #results == 1 then
        return results[1]
    end
end

targetBox:GetPropertyChangedSignal("Text"):Connect(
    function()
        selected = autoComplete(targetBox.Text)
        if selected ~= nil then
            targetHelper.Text = selected:lower()
        end

        if targetBox.Text == "" then
            targetHelper.Text = ""
        end
    end
)

targetBox.Focused:Connect(
    function()
        key.InputBegan:connect(onKeyPress)
    end
)

function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Insert then
        if selected ~= nil then
            targetBox.Text = selected:lower()
        end
    end
end

buttonTog.MouseButton1Click:Connect(function()

	if not _G.toggle then 

		buttonTog.Text = 'ON'

		buttonTog.TextColor3 = Color3.new(0.333333, 0.666667, 0)

		_G.toggle = true
		walkTo(targetBox.Text)


		debounce = true

	else

		buttonTog.Text = 'OFF'

		buttonTog.TextColor3 = Color3.new(0.498039, 0, 0.0745098)

		_G.toggle = false

		debounce = false

	end
end)

function walkTo(plr)
    if _G.toggle then
        print('inside')
        for _, player in next, otherPlayers:GetPlayers() do
            if player.DisplayName:lower() == plr:lower() then
                afterDeath(player)

                repeat
                    task.wait()
                    print('moving'..player.DisplayName)

                    thisPlayer.Character.Humanoid:MoveTo(player.Character.HumanoidRootPart.Position)
                until _G.toggle == false
                
                print(here)

                player.Character.Humanoid.StateChanged:Connect(
                    function(old, new)
                        if _G.toggle then
                            if new == Enum.HumanoidStateType.Jumping then
                                thisPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            end
                        end
                    end
                )
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
