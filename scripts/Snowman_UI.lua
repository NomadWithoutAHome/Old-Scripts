---[ UI Variable Setup ]---
local GlassUI = Instance.new("ScreenGui")
local GlassMain = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UIStroke = Instance.new("UIStroke")
local GlassMainButtonHolder = Instance.new("Frame")
local GlassOption = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIStroke_2 = Instance.new("UIStroke")
local GlassSubMenu = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local GlassSubMenuOption = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIStroke_3 = Instance.new("UIStroke")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local GlassSubMenuOption_2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UIStroke_4 = Instance.new("UIStroke")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local GlassSubMenuOption_3 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UIStroke_5 = Instance.new("UIStroke")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIListLayout_2 = Instance.new("UIListLayout")
local GlassOption_2 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UIStroke_6 = Instance.new("UIStroke")
local GlassSubMenu_2 = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local GlassSubMenuOption_4 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UIStroke_7 = Instance.new("UIStroke")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local GlassToggle = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local UIStroke_8 = Instance.new("UIStroke")
local GlassToggleArrow = Instance.new("TextLabel")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local GlassToggleButton = Instance.new("TextButton")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local is_out = Instance.new("BoolValue")
local is_active = Instance.new("BoolValue")
local is_name = Instance.new("StringValue")
local GlassSubMenuOption_5 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local UIStroke_9 = Instance.new("UIStroke")
local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
local GlassToggle_2 = Instance.new("Frame")
local GlassToggleButton_2 = Instance.new("TextButton")
local UITextSizeConstraint_9 = Instance.new("UITextSizeConstraint")
local UIStroke_10 = Instance.new("UIStroke")
local UICorner_9 = Instance.new("UICorner")
local GlassToggleArrow_2 = Instance.new("TextLabel")
local UITextSizeConstraint_10 = Instance.new("UITextSizeConstraint")
local is_out_2 = Instance.new("BoolValue")
local is_active_2 = Instance.new("BoolValue")
local is_name_2 = Instance.new("StringValue")
local GlassSubMenuOption_6 = Instance.new("TextButton")
local UITextSizeConstraint_11 = Instance.new("UITextSizeConstraint")
local UICorner_10 = Instance.new("UICorner")
local UIStroke_11 = Instance.new("UIStroke")
local GlassToggle_3 = Instance.new("Frame")
local GlassToggleButton_3 = Instance.new("TextButton")
local UITextSizeConstraint_12 = Instance.new("UITextSizeConstraint")
local UIStroke_12 = Instance.new("UIStroke")
local UICorner_11 = Instance.new("UICorner")
local GlassToggleArrow_3 = Instance.new("TextLabel")
local UITextSizeConstraint_13 = Instance.new("UITextSizeConstraint")
local is_out_3 = Instance.new("BoolValue")
local is_active_3 = Instance.new("BoolValue")
local is_name_3 = Instance.new("StringValue")
local GlassSubMenuOption_7 = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local UIStroke_13 = Instance.new("UIStroke")
local UITextSizeConstraint_14 = Instance.new("UITextSizeConstraint")
local UITextSizeConstraint_15 = Instance.new("UITextSizeConstraint")
local GlassOption_3 = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local UIStroke_14 = Instance.new("UIStroke")
local UITextSizeConstraint_16 = Instance.new("UITextSizeConstraint")
local GlassOption_4 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local UIStroke_15 = Instance.new("UIStroke")
local UITextSizeConstraint_17 = Instance.new("UITextSizeConstraint")
local UICorner_15 = Instance.new("UICorner")
local GlassSeperator = Instance.new("Frame")
local GlassTitle = Instance.new("TextLabel")
local UITextSizeConstraint_18 = Instance.new("UITextSizeConstraint")
local GlassScrollingBottom = Instance.new("TextLabel")
local UITextSizeConstraint_19 = Instance.new("UITextSizeConstraint")
local GlassMainOpen = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local UIStroke_16 = Instance.new("UIStroke")
local GlassMainOpenButton = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local UITextSizeConstraint_20 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local GlassToggle_4 = Instance.new("Frame")
local UICorner_18 = Instance.new("UICorner")
local UIStroke_17 = Instance.new("UIStroke")
local GlassToggleArrow_4 = Instance.new("TextLabel")
local UITextSizeConstraint_21 = Instance.new("UITextSizeConstraint")
local GlassToggleButton_4 = Instance.new("TextButton")
local UITextSizeConstraint_22 = Instance.new("UITextSizeConstraint")
---[ UI Variable Setup ]---

---[ Standard Setups ]---
local thisPlayer = game:GetService("Players").LocalPlayer
---[ Standard Setups ]---

---[ Locations ]---
local giftLocations = game:GetService("Workspace").giftSpawns
local playerBases = game:GetService("Workspace").snowmanBases
local playerStorage = game:GetService("Players").LocalPlayer.localData.sackStorage
local playerBallcount = game:GetService("Players").LocalPlayer.localData.snowballs
local playerBallsize = thisPlayer.info.snowmanBallSize
local rebirth = thisPlayer.RespawnLocation.Parent.rebirthActive
local gameCanes = game:GetService("Workspace").gameCandyCanes
---[ Locations ]---

---[ Remotes ]---
local snowballRemote = game:GetService("ReplicatedStorage").Signals.snowballController
local snowballRemoteInvoke = game:GetService("ReplicatedStorage").Signals.snowballControllerFunc
local snowballAdd = game:GetService("ReplicatedStorage").Signals.addToSnowman
local snowballCollect = game:GetService("ReplicatedStorage").Signals.collectSnow
local snowmanController = game:GetService("ReplicatedStorage").Signals.snowmanEvent
---[ Remotes ]---

---[ UI Setup ]---
GlassUI.Name = "GlassUI"
GlassUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

GlassMain.Name = "GlassMain"
GlassMain.Parent = GlassUI
GlassMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassMain.Position = UDim2.new(0.00699999742, 0, 0.598999977, 0)
GlassMain.Size = UDim2.new(0.125274196, 0, 0.348958343, 0)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(15, 32, 39)), ColorSequenceKeypoint.new(0.47, Color3.fromRGB(32, 58, 67)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(44, 83, 100))}
UIGradient.Rotation = 25
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.28), NumberSequenceKeypoint.new(0.10, 0.27), NumberSequenceKeypoint.new(0.54, 0.13), NumberSequenceKeypoint.new(0.70, 0.12), NumberSequenceKeypoint.new(0.97, 0.13), NumberSequenceKeypoint.new(1.00, 0.17)}
UIGradient.Parent = GlassMain

UIStroke.Parent = GlassMain
UIStroke.Color = Color3.fromRGB(121, 111, 97)

GlassMainButtonHolder.Name = "GlassMainButtonHolder"
GlassMainButtonHolder.Parent = GlassMain
GlassMainButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassMainButtonHolder.BackgroundTransparency = 1.000
GlassMainButtonHolder.Position = UDim2.new(0.0822926536, 0, 0.167910442, 0)
GlassMainButtonHolder.Size = UDim2.new(0.837547243, 0, 0.675373137, 0)

GlassOption.Name = "GlassOption"
GlassOption.Parent = GlassMainButtonHolder
GlassOption.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassOption.BackgroundTransparency = 0.550
GlassOption.Size = UDim2.new(0.986206889, 0, 0.165745854, 0)
GlassOption.AutoButtonColor = false
GlassOption.Font = Enum.Font.Jura
GlassOption.Text = "<b>Player</b>"
GlassOption.RichText = true
GlassOption.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassOption.TextScaled = true
GlassOption.TextSize = 14.000
GlassOption.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = GlassOption

UIStroke_2.Parent = GlassOption
UIStroke_2.Color = Color3.fromRGB(121, 111, 97)
UIStroke_2.Thickness = 0.600
UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

GlassSubMenu.Name = "GlassSubMenu"
GlassSubMenu.Parent = GlassOption
GlassSubMenu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassSubMenu.BackgroundTransparency = 1.000
GlassSubMenu.Position = UDim2.new(1.19247556, 0, -2.33407259, 0)
GlassSubMenu.Size = UDim2.new(0.933482528, 0, 4.14222097, 0)
GlassSubMenu.Visible = false

UIListLayout.Parent = GlassSubMenu
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

GlassSubMenuOption.Name = "GlassSubMenuOption"
GlassSubMenuOption.Parent = GlassSubMenu
GlassSubMenuOption.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassSubMenuOption.BackgroundTransparency = 0.300
GlassSubMenuOption.Position = UDim2.new(0.0225563906, 0, 0, 0)
GlassSubMenuOption.Size = UDim2.new(0.872483134, 0, 0.297029704, 0)
GlassSubMenuOption.AutoButtonColor = false
GlassSubMenuOption.Font = Enum.Font.Jura
GlassSubMenuOption.Text = "<b>Pet Slots</b>"
GlassSubMenuOption.RichText = true
GlassSubMenuOption.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassSubMenuOption.TextScaled = true
GlassSubMenuOption.TextSize = 14.000
GlassSubMenuOption.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = GlassSubMenuOption

UIStroke_3.Parent = GlassSubMenuOption
UIStroke_3.Color = Color3.fromRGB(121, 111, 97)
UIStroke_3.Thickness = 0.600
UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UITextSizeConstraint.Parent = GlassSubMenuOption
UITextSizeConstraint.MaxTextSize = 14

GlassSubMenuOption_2.Name = "GlassSubMenuOption"
GlassSubMenuOption_2.Parent = GlassSubMenu
GlassSubMenuOption_2.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassSubMenuOption_2.BackgroundTransparency = 0.300
GlassSubMenuOption_2.Position = UDim2.new(-0.849624097, 0, -0.0202020202, 0)
GlassSubMenuOption_2.Size = UDim2.new(0.872483134, 0, 0.297029704, 0)
GlassSubMenuOption_2.AutoButtonColor = false
GlassSubMenuOption_2.Font = Enum.Font.Jura
GlassSubMenuOption_2.Text = "<b>PVP</b>"
GlassSubMenuOption_2.RichText = true
GlassSubMenuOption_2.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassSubMenuOption_2.TextScaled = true
GlassSubMenuOption_2.TextSize = 14.000
GlassSubMenuOption_2.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = GlassSubMenuOption_2

UIStroke_4.Parent = GlassSubMenuOption_2
UIStroke_4.Color = Color3.fromRGB(121, 111, 97)
UIStroke_4.Thickness = 0.600
UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UITextSizeConstraint_2.Parent = GlassSubMenuOption_2
UITextSizeConstraint_2.MaxTextSize = 14

GlassSubMenuOption_3.Name = "GlassSubMenuOption"
GlassSubMenuOption_3.Parent = GlassSubMenu
GlassSubMenuOption_3.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassSubMenuOption_3.BackgroundTransparency = 0.300
GlassSubMenuOption_3.Position = UDim2.new(0.0225563906, 0, 0, 0)
GlassSubMenuOption_3.Size = UDim2.new(0.872483134, 0, 0.297029704, 0)
GlassSubMenuOption_3.AutoButtonColor = false
GlassSubMenuOption_3.Font = Enum.Font.Jura
GlassSubMenuOption_3.Text = "<b>World</b>"
GlassSubMenuOption_3.RichText = true
GlassSubMenuOption_3.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassSubMenuOption_3.TextScaled = true
GlassSubMenuOption_3.TextSize = 14.000
GlassSubMenuOption_3.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 3)
UICorner_4.Parent = GlassSubMenuOption_3

UIStroke_5.Parent = GlassSubMenuOption_3
UIStroke_5.Color = Color3.fromRGB(121, 111, 97)
UIStroke_5.Thickness = 0.600
UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UITextSizeConstraint_3.Parent = GlassSubMenuOption_3
UITextSizeConstraint_3.MaxTextSize = 14

UITextSizeConstraint_4.Parent = GlassOption
UITextSizeConstraint_4.MaxTextSize = 14

UIListLayout_2.Parent = GlassMainButtonHolder
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 7)

GlassOption_2.Name = "GlassOption"
GlassOption_2.Parent = GlassMainButtonHolder
GlassOption_2.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassOption_2.BackgroundTransparency = 0.550
GlassOption_2.Position = UDim2.new(0.37931034, 0, 0.0386740342, 0)
GlassOption_2.Size = UDim2.new(0.986206889, 0, 0.165745854, 0)
GlassOption_2.AutoButtonColor = false
GlassOption_2.Font = Enum.Font.Jura
GlassOption_2.Text = "<b>Farms</b>"
GlassOption_2.RichText = true
GlassOption_2.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassOption_2.TextScaled = true
GlassOption_2.TextSize = 14.000
GlassOption_2.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 3)
UICorner_5.Parent = GlassOption_2

UIStroke_6.Parent = GlassOption_2
UIStroke_6.Color = Color3.fromRGB(121, 111, 97)
UIStroke_6.Thickness = 0.600
UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

GlassSubMenu_2.Name = "GlassSubMenu"
GlassSubMenu_2.Parent = GlassOption_2
GlassSubMenu_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassSubMenu_2.BackgroundTransparency = 1.000
GlassSubMenu_2.Position = UDim2.new(1.16799998, 0, -3.5, 0)
GlassSubMenu_2.Size = UDim2.new(0.958041966, 0, 4.5999999, 0)

UIListLayout_3.Parent = GlassSubMenu_2
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 2)

GlassSubMenuOption_4.Name = "GlassSubMenuOption"
GlassSubMenuOption_4.Parent = GlassSubMenu_2
GlassSubMenuOption_4.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassSubMenuOption_4.BackgroundTransparency = 0.300
GlassSubMenuOption_4.Position = UDim2.new(-0.849624097, 0, -0.0202020202, 0)
GlassSubMenuOption_4.Size = UDim2.new(0.94890511, 0, 0.217391297, 0)
GlassSubMenuOption_4.AutoButtonColor = false
GlassSubMenuOption_4.Font = Enum.Font.Jura
GlassSubMenuOption_4.Text = "<b>Snow Base</b>"
GlassSubMenuOption_4.RichText = true
GlassSubMenuOption_4.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassSubMenuOption_4.TextScaled = true
GlassSubMenuOption_4.TextSize = 14.000
GlassSubMenuOption_4.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 3)
UICorner_6.Parent = GlassSubMenuOption_4

UIStroke_7.Parent = GlassSubMenuOption_4
UIStroke_7.Color = Color3.fromRGB(121, 111, 97)
UIStroke_7.Thickness = 0.600
UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UITextSizeConstraint_5.Parent = GlassSubMenuOption_4
UITextSizeConstraint_5.MaxTextSize = 14

GlassToggle.Name = "GlassToggle"
GlassToggle.Parent = GlassSubMenuOption_4
GlassToggle.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassToggle.BackgroundTransparency = 0.300
GlassToggle.Position = UDim2.new(0.726999998, 0, -0.00200000009, 0)
GlassToggle.Size = UDim2.new(0.271299243, 0, 0.99555558, 0)
GlassToggle.ZIndex = -1

UICorner_7.CornerRadius = UDim.new(0, 3)
UICorner_7.Parent = GlassToggle

UIStroke_8.Parent = GlassToggle
UIStroke_8.Color = Color3.fromRGB(121, 111, 97)
UIStroke_8.Thickness = 0.600
UIStroke_8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

GlassToggleArrow.Name = "GlassToggleArrow"
GlassToggleArrow.Parent = GlassToggle
GlassToggleArrow.AnchorPoint = Vector2.new(0.5, 0.600000024)
GlassToggleArrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassToggleArrow.BackgroundTransparency = 1.000
GlassToggleArrow.Position = UDim2.new(0.498979837, 0, 0.542420864, 0)
GlassToggleArrow.Size = UDim2.new(0.510204017, 0, 0.619047642, 0)
GlassToggleArrow.ZIndex = -1
GlassToggleArrow.Font = Enum.Font.Jura
GlassToggleArrow.Text = "<>"
GlassToggleArrow.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassToggleArrow.TextScaled = true
GlassToggleArrow.TextSize = 14.000
GlassToggleArrow.TextStrokeColor3 = Color3.fromRGB(9, 168, 158)
GlassToggleArrow.TextStrokeTransparency = 0.300
GlassToggleArrow.TextTransparency = 0.950
GlassToggleArrow.TextWrapped = true

UITextSizeConstraint_6.Parent = GlassToggleArrow
UITextSizeConstraint_6.MaxTextSize = 25

GlassToggleButton.Name = "GlassToggleButton"
GlassToggleButton.Parent = GlassToggle
GlassToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassToggleButton.BackgroundTransparency = 1.000
GlassToggleButton.Position = UDim2.new(0.0154967019, 0, 0, 0)
GlassToggleButton.Size = UDim2.new(0.979591846, 0, 0.715714216, 0)
GlassToggleButton.AutoButtonColor = false
GlassToggleButton.Font = Enum.Font.SourceSans
GlassToggleButton.Text = ""
GlassToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
GlassToggleButton.TextScaled = true
GlassToggleButton.TextSize = 14.000
GlassToggleButton.TextWrapped = true

UITextSizeConstraint_7.Parent = GlassToggleButton
UITextSizeConstraint_7.MaxTextSize = 14

is_out.Name = "is_out"
is_out.Parent = GlassToggle

is_active.Name = "is_active"
is_active.Parent = GlassToggle

is_name.Name = "is_name"
is_name.Parent = GlassToggle
is_name.Value = "snowbase"

GlassSubMenuOption_5.Name = "GlassSubMenuOption"
GlassSubMenuOption_5.Parent = GlassSubMenu_2
GlassSubMenuOption_5.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassSubMenuOption_5.BackgroundTransparency = 0.300
GlassSubMenuOption_5.Position = UDim2.new(0.0225563906, 0, 0, 0)
GlassSubMenuOption_5.Size = UDim2.new(0.94890511, 0, 0.217391297, 0)
GlassSubMenuOption_5.AutoButtonColor = false
GlassSubMenuOption_5.Font = Enum.Font.Jura
GlassSubMenuOption_5.Text = "<b>Candy Cane</b>"
GlassSubMenuOption_5.RichText = true
GlassSubMenuOption_5.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassSubMenuOption_5.TextScaled = true
GlassSubMenuOption_5.TextSize = 14.000
GlassSubMenuOption_5.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 3)
UICorner_8.Parent = GlassSubMenuOption_5

UIStroke_9.Parent = GlassSubMenuOption_5
UIStroke_9.Color = Color3.fromRGB(121, 111, 97)
UIStroke_9.Thickness = 0.600
UIStroke_9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UITextSizeConstraint_8.Parent = GlassSubMenuOption_5
UITextSizeConstraint_8.MaxTextSize = 14

GlassToggle_2.Name = "GlassToggle"
GlassToggle_2.Parent = GlassSubMenuOption_5
GlassToggle_2.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassToggle_2.BackgroundTransparency = 0.300
GlassToggle_2.Position = UDim2.new(0.726999998, 0, -0.00200000009, 0)
GlassToggle_2.Size = UDim2.new(0.271299243, 0, 0.99555558, 0)
GlassToggle_2.ZIndex = -1

GlassToggleButton_2.Name = "GlassToggleButton"
GlassToggleButton_2.Parent = GlassToggle_2
GlassToggleButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassToggleButton_2.BackgroundTransparency = 1.000
GlassToggleButton_2.Position = UDim2.new(0.0154967019, 0, 0, 0)
GlassToggleButton_2.Size = UDim2.new(0.979591846, 0, 0.715714216, 0)
GlassToggleButton_2.AutoButtonColor = false
GlassToggleButton_2.Font = Enum.Font.SourceSans
GlassToggleButton_2.Text = ""
GlassToggleButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
GlassToggleButton_2.TextScaled = true
GlassToggleButton_2.TextSize = 14.000
GlassToggleButton_2.TextWrapped = true

UITextSizeConstraint_9.Parent = GlassToggleButton_2
UITextSizeConstraint_9.MaxTextSize = 14

UIStroke_10.Parent = GlassToggle_2
UIStroke_10.Color = Color3.fromRGB(121, 111, 97)
UIStroke_10.Thickness = 0.600
UIStroke_10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UICorner_9.CornerRadius = UDim.new(0, 3)
UICorner_9.Parent = GlassToggle_2

GlassToggleArrow_2.Name = "GlassToggleArrow"
GlassToggleArrow_2.Parent = GlassToggle_2
GlassToggleArrow_2.AnchorPoint = Vector2.new(0.5, 0.600000024)
GlassToggleArrow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassToggleArrow_2.BackgroundTransparency = 1.000
GlassToggleArrow_2.Position = UDim2.new(0.498979837, 0, 0.542420864, 0)
GlassToggleArrow_2.Size = UDim2.new(0.510204017, 0, 0.619047642, 0)
GlassToggleArrow_2.ZIndex = -1
GlassToggleArrow_2.Font = Enum.Font.Jura
GlassToggleArrow_2.Text = "<>"
GlassToggleArrow_2.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassToggleArrow_2.TextScaled = true
GlassToggleArrow_2.TextSize = 14.000
GlassToggleArrow_2.TextStrokeColor3 = Color3.fromRGB(9, 168, 158)
GlassToggleArrow_2.TextStrokeTransparency = 0.300
GlassToggleArrow_2.TextTransparency = 0.950
GlassToggleArrow_2.TextWrapped = true

UITextSizeConstraint_10.Parent = GlassToggleArrow_2
UITextSizeConstraint_10.MaxTextSize = 25

is_out_2.Name = "is_out"
is_out_2.Parent = GlassToggle_2

is_active_2.Name = "is_active"
is_active_2.Parent = GlassToggle_2

is_name_2.Name = "is_name"
is_name_2.Parent = GlassToggle_2
is_name_2.Value = "candy"

GlassSubMenuOption_6.Name = "GlassSubMenuOption"
GlassSubMenuOption_6.Parent = GlassSubMenu_2
GlassSubMenuOption_6.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassSubMenuOption_6.BackgroundTransparency = 0.300
GlassSubMenuOption_6.Position = UDim2.new(0.0225563906, 0, 0, 0)
GlassSubMenuOption_6.Size = UDim2.new(0.94890511, 0, 0.217391297, 0)
GlassSubMenuOption_6.AutoButtonColor = false
GlassSubMenuOption_6.Font = Enum.Font.Jura
GlassSubMenuOption_6.Text = "<b>Presents</b>"
GlassSubMenuOption_6.RichText = true
GlassSubMenuOption_6.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassSubMenuOption_6.TextScaled = true
GlassSubMenuOption_6.TextSize = 14.000
GlassSubMenuOption_6.TextWrapped = true

UITextSizeConstraint_11.Parent = GlassSubMenuOption_6
UITextSizeConstraint_11.MaxTextSize = 14

UICorner_10.CornerRadius = UDim.new(0, 3)
UICorner_10.Parent = GlassSubMenuOption_6

UIStroke_11.Parent = GlassSubMenuOption_6
UIStroke_11.Color = Color3.fromRGB(121, 111, 97)
UIStroke_11.Thickness = 0.600
UIStroke_11.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

GlassToggle_3.Name = "GlassToggle"
GlassToggle_3.Parent = GlassSubMenuOption_6
GlassToggle_3.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassToggle_3.BackgroundTransparency = 0.300
GlassToggle_3.Position = UDim2.new(0.726999998, 0, -0.00200000009, 0)
GlassToggle_3.Size = UDim2.new(0.271299243, 0, 0.99555558, 0)
GlassToggle_3.ZIndex = -1

GlassToggleButton_3.Name = "GlassToggleButton"
GlassToggleButton_3.Parent = GlassToggle_3
GlassToggleButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassToggleButton_3.BackgroundTransparency = 1.000
GlassToggleButton_3.Position = UDim2.new(0.0154967019, 0, 0, 0)
GlassToggleButton_3.Size = UDim2.new(0.979591846, 0, 0.715714216, 0)
GlassToggleButton_3.AutoButtonColor = false
GlassToggleButton_3.Font = Enum.Font.SourceSans
GlassToggleButton_3.Text = ""
GlassToggleButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
GlassToggleButton_3.TextScaled = true
GlassToggleButton_3.TextSize = 14.000
GlassToggleButton_3.TextWrapped = true

UITextSizeConstraint_12.Parent = GlassToggleButton_3
UITextSizeConstraint_12.MaxTextSize = 14

UIStroke_12.Parent = GlassToggle_3
UIStroke_12.Color = Color3.fromRGB(121, 111, 97)
UIStroke_12.Thickness = 0.600
UIStroke_12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UICorner_11.CornerRadius = UDim.new(0, 3)
UICorner_11.Parent = GlassToggle_3

GlassToggleArrow_3.Name = "GlassToggleArrow"
GlassToggleArrow_3.Parent = GlassToggle_3
GlassToggleArrow_3.AnchorPoint = Vector2.new(0.5, 0.600000024)
GlassToggleArrow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassToggleArrow_3.BackgroundTransparency = 1.000
GlassToggleArrow_3.Position = UDim2.new(0.498979837, 0, 0.542420864, 0)
GlassToggleArrow_3.Size = UDim2.new(0.510204017, 0, 0.619047642, 0)
GlassToggleArrow_3.ZIndex = -1
GlassToggleArrow_3.Font = Enum.Font.Jura
GlassToggleArrow_3.Text = "<>"
GlassToggleArrow_3.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassToggleArrow_3.TextScaled = true
GlassToggleArrow_3.TextSize = 14.000
GlassToggleArrow_3.TextStrokeColor3 = Color3.fromRGB(9, 168, 158)
GlassToggleArrow_3.TextStrokeTransparency = 0.300
GlassToggleArrow_3.TextTransparency = 0.950
GlassToggleArrow_3.TextWrapped = true

UITextSizeConstraint_13.Parent = GlassToggleArrow_3
UITextSizeConstraint_13.MaxTextSize = 25

is_out_3.Name = "is_out"
is_out_3.Parent = GlassToggle_3

is_active_3.Name = "is_active"
is_active_3.Parent = GlassToggle_3

is_name_3.Name = "is_name"
is_name_3.Parent = GlassToggle_3
is_name_3.Value = "presents"

GlassSubMenuOption_7.Name = "GlassSubMenuOption"
GlassSubMenuOption_7.Parent = GlassSubMenu_2
GlassSubMenuOption_7.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassSubMenuOption_7.BackgroundTransparency = 0.300
GlassSubMenuOption_7.Position = UDim2.new(-0.849624097, 0, -0.0202020202, 0)
GlassSubMenuOption_7.Size = UDim2.new(0.94890511, 0, 0.217391297, 0)
GlassSubMenuOption_7.AutoButtonColor = false
GlassSubMenuOption_7.Font = Enum.Font.Jura
GlassSubMenuOption_7.Text = "<b>Boss</b>"
GlassSubMenuOption_7.RichText = true
GlassSubMenuOption_7.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassSubMenuOption_7.TextScaled = true
GlassSubMenuOption_7.TextSize = 14.000
GlassSubMenuOption_7.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0, 3)
UICorner_12.Parent = GlassSubMenuOption_7

UIStroke_13.Parent = GlassSubMenuOption_7
UIStroke_13.Color = Color3.fromRGB(121, 111, 97)
UIStroke_13.Thickness = 0.600
UIStroke_13.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UITextSizeConstraint_14.Parent = GlassSubMenuOption_7
UITextSizeConstraint_14.MaxTextSize = 14

UITextSizeConstraint_15.Parent = GlassOption_2
UITextSizeConstraint_15.MaxTextSize = 14

GlassOption_3.Name = "GlassOption"
GlassOption_3.Parent = GlassMainButtonHolder
GlassOption_3.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassOption_3.BackgroundTransparency = 0.550
GlassOption_3.Size = UDim2.new(0.986206889, 0, 0.165745854, 0)
GlassOption_3.AutoButtonColor = false
GlassOption_3.Font = Enum.Font.Jura
GlassOption_3.Text = "<b>Stats</b>"
GlassOption_3.RichText = true
GlassOption_3.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassOption_3.TextScaled = true
GlassOption_3.TextSize = 14.000
GlassOption_3.TextWrapped = true

UICorner_13.CornerRadius = UDim.new(0, 3)
UICorner_13.Parent = GlassOption_3

UIStroke_14.Parent = GlassOption_3
UIStroke_14.Color = Color3.fromRGB(121, 111, 97)
UIStroke_14.Thickness = 0.600
UIStroke_14.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UITextSizeConstraint_16.Parent = GlassOption_3
UITextSizeConstraint_16.MaxTextSize = 14

GlassOption_4.Name = "GlassOption"
GlassOption_4.Parent = GlassMainButtonHolder
GlassOption_4.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassOption_4.BackgroundTransparency = 0.550
GlassOption_4.Size = UDim2.new(0.986206889, 0, 0.165745854, 0)
GlassOption_4.AutoButtonColor = false
GlassOption_4.Font = Enum.Font.Jura
GlassOption_4.Text = "<b>About</b>"
GlassOption_4.RichText = true
GlassOption_4.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassOption_4.TextScaled = true
GlassOption_4.TextSize = 14.000
GlassOption_4.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 3)
UICorner_14.Parent = GlassOption_4

UIStroke_15.Parent = GlassOption_4
UIStroke_15.Color = Color3.fromRGB(121, 111, 97)
UIStroke_15.Thickness = 0.600
UIStroke_15.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UITextSizeConstraint_17.Parent = GlassOption_4
UITextSizeConstraint_17.MaxTextSize = 14

UICorner_15.CornerRadius = UDim.new(0, 3)
UICorner_15.Parent = GlassMain

GlassSeperator.Name = "GlassSeperator"
GlassSeperator.Parent = GlassMain
GlassSeperator.BackgroundColor3 = Color3.fromRGB(121, 111, 97)
GlassSeperator.BorderSizePixel = 0
GlassSeperator.Position = UDim2.new(0, 0, 0.0899999812, 0)
GlassSeperator.Size = UDim2.new(1, 0, 0.0037313432, 0)

GlassTitle.Name = "GlassTitle"
GlassTitle.Parent = GlassMain
GlassTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassTitle.BackgroundTransparency = 1.000
GlassTitle.Position = UDim2.new(-0.00324133621, 0, 0, 0)
GlassTitle.Size = UDim2.new(1.0032413, 0, 0.0932835788, 0)
GlassTitle.Font = Enum.Font.Jura
GlassTitle.Text = "<b>Snowman Simulator</b>"
GlassTitle.RichText = true
GlassTitle.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassTitle.TextScaled = true
GlassTitle.TextSize = 14.000
GlassTitle.TextWrapped = true

UITextSizeConstraint_18.Parent = GlassTitle
UITextSizeConstraint_18.MaxTextSize = 14

GlassScrollingBottom.Name = "GlassScrollingBottom"
GlassScrollingBottom.Parent = GlassMain
GlassScrollingBottom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassScrollingBottom.BackgroundTransparency = 1.000
GlassScrollingBottom.Position = UDim2.new(0.0411463268, 0, 0.929104507, 0)
GlassScrollingBottom.Size = UDim2.new(0.906861544, 0, 0.0708955228, 0)
GlassScrollingBottom.Font = Enum.Font.Jura
GlassScrollingBottom.Text = "<b>GlassUI made by DohmBoyOG</b>"
GlassScrollingBottom.RichText = true
GlassScrollingBottom.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassScrollingBottom.TextScaled = true
GlassScrollingBottom.TextSize = 14.000
GlassScrollingBottom.TextWrapped = true

UITextSizeConstraint_19.Parent = GlassScrollingBottom
UITextSizeConstraint_19.MaxTextSize = 11

GlassMainOpen.Name = "GlassMainOpen"
GlassMainOpen.Parent = GlassUI
GlassMainOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassMainOpen.Position = UDim2.new(0.0065939445, 0, 0.953125, 0)
GlassMainOpen.Size = UDim2.new(0.0600764826, 0, 0.0377604179, 0)

UICorner_16.CornerRadius = UDim.new(0, 10)
UICorner_16.Parent = GlassMainOpen

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(15, 32, 39)), ColorSequenceKeypoint.new(0.47, Color3.fromRGB(32, 58, 67)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(44, 83, 100))}
UIGradient_2.Rotation = 25
UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.28), NumberSequenceKeypoint.new(0.10, 0.27), NumberSequenceKeypoint.new(0.54, 0.13), NumberSequenceKeypoint.new(0.70, 0.12), NumberSequenceKeypoint.new(0.97, 0.13), NumberSequenceKeypoint.new(1.00, 0.17)}
UIGradient_2.Parent = GlassMainOpen

UIStroke_16.Parent = GlassMainOpen
UIStroke_16.Color = Color3.fromRGB(121, 111, 97)

GlassMainOpenButton.Name = "GlassMainOpenButton"
GlassMainOpenButton.Parent = GlassMainOpen
GlassMainOpenButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassMainOpenButton.BackgroundTransparency = 1.000
GlassMainOpenButton.Position = UDim2.new(-4.64841499e-08, 0, 0, 0)
GlassMainOpenButton.Size = UDim2.new(0.999214351, 0, 1, 0)
GlassMainOpenButton.AutoButtonColor = false
GlassMainOpenButton.Font = Enum.Font.Jura
GlassMainOpenButton.Text = "<b>Menu</b>"
GlassMainOpenButton.RichText = true
GlassMainOpenButton.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassMainOpenButton.TextScaled = true
GlassMainOpenButton.TextSize = 14.000
GlassMainOpenButton.TextWrapped = true

UICorner_17.CornerRadius = UDim.new(0, 10)
UICorner_17.Parent = GlassMainOpenButton

UITextSizeConstraint_20.Parent = GlassMainOpenButton
UITextSizeConstraint_20.MaxTextSize = 14

UIAspectRatioConstraint.Parent = GlassUI
UIAspectRatioConstraint.AspectRatio = 1.778

GlassToggle_4.Name = "GlassToggle"
GlassToggle_4.Parent = GlassUI
GlassToggle_4.BackgroundColor3 = Color3.fromRGB(18, 76, 77)
GlassToggle_4.BackgroundTransparency = 0.300
GlassToggle_4.Position = UDim2.new(0.234375, 0, 0.566418946, 0)
GlassToggle_4.Size = UDim2.new(0.0255208332, 0, 0.0388888903, 0)
GlassToggle_4.Visible = false

UICorner_18.CornerRadius = UDim.new(0, 3)
UICorner_18.Parent = GlassToggle_4

UIStroke_17.Parent = GlassToggle_4
UIStroke_17.Color = Color3.fromRGB(121, 111, 97)
UIStroke_17.Thickness = 0.600
UIStroke_17.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

GlassToggleArrow_4.Name = "GlassToggleArrow"
GlassToggleArrow_4.Parent = GlassToggle_4
GlassToggleArrow_4.AnchorPoint = Vector2.new(0.5, 0.600000024)
GlassToggleArrow_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassToggleArrow_4.BackgroundTransparency = 1.000
GlassToggleArrow_4.Position = UDim2.new(0.498979837, 0, 0.542420864, 0)
GlassToggleArrow_4.Size = UDim2.new(0.510204077, 0, 0.619047642, 0)
GlassToggleArrow_4.Font = Enum.Font.Jura
GlassToggleArrow_4.Text = "<>"
GlassToggleArrow_4.TextColor3 = Color3.fromRGB(121, 111, 97)
GlassToggleArrow_4.TextScaled = true
GlassToggleArrow_4.TextSize = 14.000
GlassToggleArrow_4.TextStrokeColor3 = Color3.fromRGB(9, 168, 158)
GlassToggleArrow_4.TextStrokeTransparency = 0.300
GlassToggleArrow_4.TextTransparency = 0.950
GlassToggleArrow_4.TextWrapped = true

UITextSizeConstraint_21.Parent = GlassToggleArrow_4
UITextSizeConstraint_21.MaxTextSize = 25

GlassToggleButton_4.Name = "GlassToggleButton"
GlassToggleButton_4.Parent = GlassToggle_4
GlassToggleButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassToggleButton_4.BackgroundTransparency = 1.000
GlassToggleButton_4.Position = UDim2.new(0.0154967019, 0, 0, 0)
GlassToggleButton_4.Size = UDim2.new(0.979591846, 0, 1, 0)
GlassToggleButton_4.AutoButtonColor = false
GlassToggleButton_4.Font = Enum.Font.SourceSans
GlassToggleButton_4.Text = ""
GlassToggleButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
GlassToggleButton_4.TextScaled = true
GlassToggleButton_4.TextSize = 14.000
GlassToggleButton_4.TextWrapped = true

UITextSizeConstraint_22.Parent = GlassToggleButton_4
UITextSizeConstraint_22.MaxTextSize = 14
---[ UI Setup ]---


---[ Functions ]---
function Tween(Object, Time, Style, Direction, Repeat, Customization)
    game:GetService("TweenService"):Create(
        Object,
        TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction], 0, false, 0),
        Customization
    ):Play()
end

GlassMainOpenButton.MouseButton1Click:Connect(
    function()
        if GlassMain.Visible == false then
            GlassMain.Visible = true
        else
            GlassMain.Visible = false
        end
    end
)

local submenu_routine =
    coroutine.wrap(
    function()
        for _, button in next, GlassMain:GetDescendants() do
            if
                button.ClassName == "TextButton" and button.Name ~= "GlassSubMenuOption" and
                    button.Name ~= "GlassToggleButton"
             then
                button.MouseButton1Click:Connect(
                    function()
                        if button.GlassSubMenu.Visible == false then
                            button.GlassSubMenu.Visible = true
                        else
                            button.GlassSubMenu.Visible = false
                        end
                    end
                )
            end
        end
    end
)
submenu_routine()

function toggle_routine()
    local pos_in = UDim2.new(0.727, 0, -0.002, 0)
    local pos_out = UDim2.new(0.998, 0, -0.002, 0)

    for _, button in next, GlassMain:GetDescendants() do
        _G.bool = false
        if button.ClassName == "TextButton" and button.Name == "GlassToggleButton" then
            button.Parent.Parent.MouseButton1Click:Connect(
                function()
                    if button.Parent.Position == pos_in and button.Parent.GlassToggleArrow.Rotation == 0 then
                        button.Parent:TweenPosition(pos_out, Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.3)
                        Tween(button.Parent.GlassToggleArrow, 0.3, "Quad", "Out", true, {Rotation = 90})
                        Tween(
                            button.Parent,
                            0.3,
                            "Quad",
                            "Out",
                            true,
                            {BackgroundColor3 = Color3.new(0.419608, 0.145098, 0.152941)}
                        )
                        button.Parent.is_active.Value = true
                        _G[button.Parent.is_name.Value] = button.Parent.is_active.Value
                    else
                        button.Parent:TweenPosition(pos_in, Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.3)
                        Tween(button.Parent.GlassToggleArrow, 0.3, "Quad", "Out", true, {Rotation = 0})
                        Tween(
                            button.Parent,
                            0.3,
                            "Quad",
                            "Out",
                            true,
                            {BackgroundColor3 = Color3.new(0.0705882, 0.298039, 0.301961)}
                        )
                        button.Parent.is_active.Value = false
                        _G[button.Parent.is_name.Value] = button.Parent.is_active.Value
                    end
                end
            )
        end
    end
end
toggle_routine()

local function snowman_rebirth()
    if rebirth.Value == true then
        for _, snowbase in pairs(playerBases:GetChildren()) do
            if snowbase.player.value == thisPlayer then
                LandPlot = snowbase
            end
        end
        snowmanController:FireServer("acceptRebirth", LandPlot, true)
    end
end

function snowman_gift_ready()
    for _, v in next, giftLocations:GetDescendants() do
        if
            v:IsA("StringValue") and v.Name == "ownerName" and v.Value == thisPlayer.Name and
                v.Parent.Name == "snowmanGift"
         then
            return true
        end
    end
end

function snowman_gift()
    if snowman_gift_ready() then
        warn("Attempt to grab Gift")
        for _, v in pairs(giftLocations:GetDescendants()) do
            if
                v:IsA("StringValue") and v.Name == "ownerName" and v.Value == thisPlayer.Name and
                    v.Parent.Name == "snowmanGift"
             then
                thisPlayer.Character.HumanoidRootPart.CFrame = v.Parent.lid.box.CFrame * CFrame.new(0, 20, 0)
                task.wait(1)
                fireproximityprompt(v.Parent.hitbox.proxGui.ProximityPrompt, 10)
                repeat
                    warn("wait for box to be nil")
                    task.wait()
                until snowman_gift_ready() == nil
                warn("waiting for parent to be gone")
                print("box is gone!")
                snowman_rebirth()
            end
        end
    end
end

function auto_snowbase()
    if _G.snowbase and rebirth.Value == false then
        snowballRemote:FireServer("startRoll")
        repeat
            snowballCollect:FireServer()
            task.wait()
        until playerBallsize.Value >= 22 or playerBallcount.Value == playerStorage.Value
        snowballRemoteInvoke:InvokeServer("stopRoll")
        snowballAdd:FireServer("addToSnowman")
        task.wait(2)
    end
    snowman_gift()
end

function auto_canes()
    local candy = gameCanes:GetChildren()

    if _G.candycane then
        for i = 1, #candy do
            v = candy[i]
            if v:FindFirstChild("cane") and v.cane.Transparency == 0 then
                thisPlayer.Character.HumanoidRootPart.CFrame = v.cane.CFrame * CFrame.new(0, 4, 0)
                repeat
                    task.wait()
                until v.cane.Transparency == 1 or wait(3)
            end
        end
    end
end

function auto_gifts()
    if _G.presents then
        for _, v in pairs(giftLocations:GetDescendants()) do
            if v and v:IsA("ProximityPrompt") then
                thisPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                wait(1)
                fireproximityprompt(v, 10)
                v.Parent.Parent:WaitForChild("unwrapProgressBar", 5)
                repeat
                    wait()
                until not v.Parent.Parent:FindFirstChild("unwrapProgressBar")
            end
        end
    end
end
---[ Functions ]---

---[ Game Loop ]---
while true do
    task.wait()
    auto_snowbase()
    auto_canes()
    auto_gifts()
end
---[ Game Loop ]---


