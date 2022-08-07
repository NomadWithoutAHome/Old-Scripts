local AntiIdle = game:service "VirtualUser"


game:service("Players").LocalPlayer.Idled:connect(
    function()
        AntiIdle:CaptureController()
        AntiIdle:ClickButton2(Vector2.new())
    end
)

if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("WindowsXPStyle") then
    game:GetService("Players").LocalPlayer.PlayerGui.WindowsXPStyle:Destroy()
end

local m = require(game:GetService("ReplicatedStorage").Modules.ServiceLoader.NetworkService)
local pranks = require(game:GetService("ReplicatedStorage").Modules.UtilityLoader.Custom.ItemDataUtility.Data.Ranks)
local swords = require(game:GetService("ReplicatedStorage").Modules.UtilityLoader.Custom.ItemDataUtility.Data.Swords)
local infiniteJumps = require(game:GetService("ReplicatedStorage").Modules.ServiceLoader.CharacterService.Handlers.Jumps)
local gameRings = game:GetService("Workspace").Rings
local pdata = require(game:GetService("ReplicatedStorage"):WaitForChild('Modules'):WaitForChild('StructureLoader').Client.ClientDataStructures).PlayerData

local KOTH = Vector3.new(-714.535, 365.501, 216.487), 28, "Circle"

local CTF = {
    Home = {
        RedFlag = {Vector3.new(-379.811, 221.04, -353.241), 22, "Circle"},
        GreenFlag = {Vector3.new(35.184, 150.718, 465.361), 28, "Circle"},
        YellowFlag = {Vector3.new(208.661, 199.159, -255.835), 19, "Circle"}
    }
}

local redState = false
local holyState = false
local darkState = false
local powerState = false
local hoopsState = false
local redFlagState = false
local yellowFlagState = false
local greenFlagState = false
local kothState = false
local autobuySwordState = false
local autobuyRankState = false
local autobuyPowerState = false

local thisPlayer = game:GetService("Players").LocalPlayer

local IslandPositions = {
    Home = Vector3.new(396.5, 159.022, 185),
    Mystic = Vector3.new(-132.345, 120.179, -2670.045),
    Unknown = Vector3.new(31.688, 89.636, -6418.307),
    Tundra = Vector3.new(143.333, 89.636, -14018.181),
    Thunder = Vector3.new(31.648, 89.636, -18542.898),
    Inferno = Vector3.new(31.358, 89.636, -29238.207),
    Void = Vector3.new(372.996, 92.5177, -38928.1),
    Dragon = Vector3.new(380.99, 120.04, -51517.5)
}

local chestnames = {
    "Hourly Chest",
    "Group Chest",
    "Mystic Chest",
    "Unknown Chest",
    "Tundra Chest",
    "Thunder Chest",
    "Inferno Chest",
    "Void Chest",
    "Midway Inferno Chest",
    "Midway Mystic Chest",
    "Midway Thunder Chest",
    "Midway Tundra Chest",
    "Midway Unknown Chest"
}

local WindowsXPStyle = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local stylestuff = Instance.new("Folder")
local outline = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local outline_2 = Instance.new("Frame")
local outline_3 = Instance.new("Frame")
local outline_4 = Instance.new("Frame")
local line = Instance.new("Frame")
local closeB = Instance.new("TextButton")
local tray = Instance.new("TextButton")
local ScrollFrame = Instance.new("ScrollingFrame")
local Home = Instance.new("Frame")
local gameName = Instance.new("TextLabel")
local gameImage = Instance.new("ImageLabel")
local descName = Instance.new("TextLabel")
local descName_2 = Instance.new("TextLabel")
local descName_3 = Instance.new("TextLabel")
local descName_4 = Instance.new("TextLabel")
local descName_5 = Instance.new("TextLabel")
local descName_6 = Instance.new("TextLabel")
local Farms = Instance.new("Frame")
local redButton = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local HolyButton = Instance.new("ImageButton")
local TextLabel_3 = Instance.new("TextLabel")
local DarkButton = Instance.new("ImageButton")
local TextLabel_4 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel_5 = Instance.new("TextLabel")
local AutoPowerButton = Instance.new("ImageButton")
local TextLabel_6 = Instance.new("TextLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel_7 = Instance.new("TextLabel")
local AutoHoopsButton = Instance.new("ImageButton")
local TextLabel_8 = Instance.new("TextLabel")
local ImageLabel_3 = Instance.new("ImageLabel")
local TextLabel_9 = Instance.new("TextLabel")
local redFlagButton = Instance.new("ImageButton")
local TextLabel_10 = Instance.new("TextLabel")
local yellowFlagButton = Instance.new("ImageButton")
local TextLabel_11 = Instance.new("TextLabel")
local greenFlagButton = Instance.new("ImageButton")
local TextLabel_12 = Instance.new("TextLabel")
local ImageLabel_4 = Instance.new("ImageLabel")
local TextLabel_13 = Instance.new("TextLabel")
local autoKothButton = Instance.new("ImageButton")
local TextLabel_14 = Instance.new("TextLabel")
local Settings = Instance.new("Frame")
local collectChestsButton = Instance.new("ImageButton")
local TextLabel_15 = Instance.new("TextLabel")
local TextLabel_16 = Instance.new("TextLabel")
local ImageLabel_5 = Instance.new("ImageLabel")
local NameHideButton = Instance.new("ImageButton")
local TextLabel_17 = Instance.new("TextLabel")
local InfJumpButton = Instance.new("ImageButton")
local TextLabel_18 = Instance.new("TextLabel")
local UnlockIslandsButton = Instance.new("ImageButton")
local TextLabel_19 = Instance.new("TextLabel")
local AutoBuy = Instance.new("Frame")
local autoSwordsButton = Instance.new("ImageButton")
local TextLabel_20 = Instance.new("TextLabel")
local TextLabel_21 = Instance.new("TextLabel")
local ImageLabel_6 = Instance.new("ImageLabel")
local autoRankButton = Instance.new("ImageButton")
local TextLabel_22 = Instance.new("TextLabel")
local autoRebirthButton = Instance.new("ImageButton")
local TextLabel_23 = Instance.new("TextLabel")
local autoSellPower = Instance.new("ImageButton")
local TextLabel_24 = Instance.new("TextLabel")
local SelectFrame = Instance.new("Frame")
local homeButton = Instance.new("TextButton")
local Logooptional = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local features = Instance.new("TextLabel")
local autoBuyButton = Instance.new("TextButton")
local SettingsButton = Instance.new("TextButton")
local autoFarmButton = Instance.new("TextButton")

--Properties:

WindowsXPStyle.Name = "WindowsXPStyle"
WindowsXPStyle.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
WindowsXPStyle.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
WindowsXPStyle.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = WindowsXPStyle
Main.BackgroundColor3 = Color3.fromRGB(198, 198, 198)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.00800000038, 0, 0.971000016, 0)
Main.Size = UDim2.new(0, 557, 0, 347)
Main.ZIndex = 1000000

stylestuff.Name = "style stuff"
stylestuff.Parent = Main

outline.Name = "outline"
outline.Parent = stylestuff
outline.BackgroundColor3 = Color3.fromRGB(35, 49, 255)
outline.BorderSizePixel = 0
outline.Size = UDim2.new(0, 557, 0, 25)

UICorner.CornerRadius = UDim.new(0, 7)
UICorner.Parent = outline

outline_2.Name = "outline"
outline_2.Parent = stylestuff
outline_2.BackgroundColor3 = Color3.fromRGB(35, 49, 255)
outline_2.BorderSizePixel = 0
outline_2.Size = UDim2.new(0, 6, 0, 347)

outline_3.Name = "outline"
outline_3.Parent = stylestuff
outline_3.BackgroundColor3 = Color3.fromRGB(35, 49, 255)
outline_3.BorderSizePixel = 0
outline_3.Position = UDim2.new(0.98922801, 0, 0, 0)
outline_3.Size = UDim2.new(0, 6, 0, 347)

outline_4.Name = "outline"
outline_4.Parent = stylestuff
outline_4.BackgroundColor3 = Color3.fromRGB(35, 49, 255)
outline_4.BorderSizePixel = 0
outline_4.Position = UDim2.new(0, 0, 0.981929183, 0)
outline_4.Size = UDim2.new(0, 557, 0, 6)

line.Name = "line"
line.Parent = stylestuff
line.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
line.BorderSizePixel = 0
line.Position = UDim2.new(0.0232446976, 0, 0.17011641, 0)
line.Size = UDim2.new(0, 132, 0, 2)
line.ZIndex = 4

closeB.Name = "closeB"
closeB.Parent = Main
closeB.BackgroundColor3 = Color3.fromRGB(255, 41, 34)
closeB.BorderColor3 = Color3.fromRGB(255, 255, 255)
closeB.Position = UDim2.new(0.951291442, 0, 0, 0)
closeB.Size = UDim2.new(0, 27, 0, 23)
closeB.ZIndex = 2
closeB.Font = Enum.Font.GothamBlack
closeB.Text = "X"
closeB.TextColor3 = Color3.fromRGB(255, 255, 255)
closeB.TextScaled = true
closeB.TextSize = 14.000
closeB.TextWrapped = true

tray.Name = "tray"
tray.Parent = Main
tray.BackgroundColor3 = Color3.fromRGB(35, 102, 227)
tray.BorderColor3 = Color3.fromRGB(255, 255, 255)
tray.Position = UDim2.new(0.896000028, 0, 0, 0)
tray.Size = UDim2.new(0, 27, 0, 23)
tray.ZIndex = 2
tray.Font = Enum.Font.GothamBlack
tray.Text = "_"
tray.TextColor3 = Color3.fromRGB(255, 255, 255)
tray.TextScaled = true
tray.TextSize = 14.000
tray.TextWrapped = true

ScrollFrame.Name = "ScrollFrame"
ScrollFrame.Parent = Main
ScrollFrame.Active = true
ScrollFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollFrame.Position = UDim2.new(0.28545782, 0, 0.0925606042, 0)
ScrollFrame.Size = UDim2.new(0, 389, 0, 296)
ScrollFrame.ZIndex = 3
ScrollFrame.CanvasPosition = Vector2.new(0, 150)

Home.Name = "Home"
Home.Parent = ScrollFrame
Home.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Home.BackgroundTransparency = 1.000
Home.BorderSizePixel = 0
Home.Size = UDim2.new(0, 389, 0, 700)

gameName.Name = "gameName"
gameName.Parent = Home
gameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName.BackgroundTransparency = 1.000
gameName.Size = UDim2.new(0, 369, 0, 32)
gameName.Font = Enum.Font.SourceSans
gameName.Text = "Knight Heroes"
gameName.TextColor3 = Color3.fromRGB(0, 0, 0)
gameName.TextSize = 30.000
gameName.TextWrapped = true

gameImage.Name = "gameImage"
gameImage.Parent = Home
gameImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameImage.BackgroundTransparency = 1.000
gameImage.Position = UDim2.new(0.0616966598, 0, 0.0549138524, 0)
gameImage.Size = UDim2.new(0, 313, 0, 219)
gameImage.Image = "http://www.roblox.com/asset/?id=6396691776"

descName.Name = "descName"
descName.Parent = Home
descName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descName.BackgroundTransparency = 1.000
descName.Position = UDim2.new(0.0616966598, 0, 0.378571421, 0)
descName.Size = UDim2.new(0, 89, 0, 32)
descName.Font = Enum.Font.SourceSans
descName.Text = "Version: 1.1"
descName.TextColor3 = Color3.fromRGB(0, 0, 0)
descName.TextSize = 20.000

descName_2.Name = "descName"
descName_2.Parent = Home
descName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descName_2.BackgroundTransparency = 1.000
descName_2.Position = UDim2.new(0.0257069413, 0, 0.415714294, 0)
descName_2.Size = UDim2.new(0, 379, 0, 40)
descName_2.Font = Enum.Font.SourceSans
descName_2.Text = "Credits:  MSTIR [GUI] and DohmboyOG [Scripting]"
descName_2.TextColor3 = Color3.fromRGB(0, 0, 0)
descName_2.TextSize = 20.000

descName_3.Name = "descName"
descName_3.Parent = Home
descName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descName_3.BackgroundTransparency = 1.000
descName_3.Position = UDim2.new(0.0616966598, 0, 0.460000008, 0)
descName_3.Size = UDim2.new(0, 272, 0, 31)
descName_3.Font = Enum.Font.SourceSans
descName_3.Text = "Mentions: yPxki [Admin] [rscripts.net]"
descName_3.TextColor3 = Color3.fromRGB(0, 0, 0)
descName_3.TextSize = 20.000

descName_4.Name = "descName"
descName_4.Parent = Home
descName_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descName_4.BackgroundTransparency = 1.000
descName_4.Position = UDim2.new(0.236503839, 0, 0.48999998, 0)
descName_4.Size = UDim2.new(0, 96, 0, 27)
descName_4.ZIndex = 1000000000
descName_4.Font = Enum.Font.SourceSans
descName_4.Text = "sweetyhvh"
descName_4.TextColor3 = Color3.fromRGB(0, 0, 0)
descName_4.TextSize = 20.000

descName_5.Name = "descName"
descName_5.Parent = Home
descName_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descName_5.BackgroundTransparency = 1.000
descName_5.Position = UDim2.new(0.406169653, 0, 0.48999998, 0)
descName_5.Size = UDim2.new(0, 96, 0, 27)
descName_5.ZIndex = 1000000000
descName_5.Font = Enum.Font.SourceSans
descName_5.Text = "[Tester]"
descName_5.TextColor3 = Color3.fromRGB(0, 0, 0)
descName_5.TextSize = 20.000

descName_6.Name = "descName"
descName_6.Parent = Home
descName_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descName_6.BackgroundTransparency = 1.000
descName_6.Position = UDim2.new(0.557840586, 0, 0.48999998, 0)
descName_6.Size = UDim2.new(0, 96, 0, 27)
descName_6.ZIndex = 1000000000
descName_6.Font = Enum.Font.SourceSans
descName_6.Text = "[Helpful]"
descName_6.TextColor3 = Color3.fromRGB(0, 0, 0)
descName_6.TextSize = 20.000

Farms.Name = "Farms"
Farms.Parent = ScrollFrame
Farms.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Farms.BackgroundTransparency = 1.000
Farms.BorderSizePixel = 0
Farms.Size = UDim2.new(0, 389, 0, 700)
Farms.Visible = false

redButton.Name = "redButton"
redButton.Parent = Farms
redButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
redButton.Position = UDim2.new(0.419023156, 0, 0.0712925047, 0)
redButton.Size = UDim2.new(0, 63, 0, 23)
redButton.ZIndex = 1000
redButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel.Parent = redButton
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 63, 0, 23)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Red Knight"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

TextLabel_2.Parent = Farms
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 7
TextLabel_2.Position = UDim2.new(0.321336776, 0, 0.00955601316, 0)
TextLabel_2.Size = UDim2.new(0, 138, 0, 32)
TextLabel_2.ZIndex = 1000
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Boss Farms"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 30.000

HolyButton.Name = "HolyButton"
HolyButton.Parent = Farms
HolyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HolyButton.Position = UDim2.new(0.419023156, 0, 0.128435358, 0)
HolyButton.Size = UDim2.new(0, 63, 0, 23)
HolyButton.ZIndex = 1000
HolyButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_3.Parent = HolyButton
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Size = UDim2.new(0, 63, 0, 23)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Holy Knight"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextSize = 14.000

DarkButton.Name = "DarkButton"
DarkButton.Parent = Farms
DarkButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarkButton.Position = UDim2.new(0.419023156, 0, 0.184149653, 0)
DarkButton.Size = UDim2.new(0, 63, 0, 23)
DarkButton.ZIndex = 1000
DarkButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_4.Parent = DarkButton
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Size = UDim2.new(0, 63, 0, 23)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Dark Knight"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextSize = 14.000

ImageLabel.Parent = Farms
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.0462724939, 0, 0.241428569, 0)
ImageLabel.Size = UDim2.new(0, 340, 0, 1)
ImageLabel.ZIndex = 100000000
ImageLabel.Image = "http://www.roblox.com/asset/?id=6372436852"

TextLabel_5.Parent = Farms
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderSizePixel = 7
TextLabel_5.Position = UDim2.new(0.321336776, 0, 0.252413154, 0)
TextLabel_5.Size = UDim2.new(0, 138, 0, 32)
TextLabel_5.ZIndex = 1000
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Auto Power"
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextSize = 30.000

AutoPowerButton.Name = "AutoPowerButton"
AutoPowerButton.Parent = Farms
AutoPowerButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoPowerButton.LayoutOrder = 5
AutoPowerButton.Position = UDim2.new(0.419023156, 0, 0.315578222, 0)
AutoPowerButton.Size = UDim2.new(0, 63, 0, 23)
AutoPowerButton.ZIndex = 1000
AutoPowerButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_6.Parent = AutoPowerButton
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Size = UDim2.new(0, 63, 0, 23)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Auto Power"
TextLabel_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.TextSize = 14.000

ImageLabel_2.Parent = Farms
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.Position = UDim2.new(0.0462724939, 0, 0.381428599, 0)
ImageLabel_2.Size = UDim2.new(0, 340, 0, 1)
ImageLabel_2.ZIndex = 100000000
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=6372436852"

TextLabel_7.Parent = Farms
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderSizePixel = 7
TextLabel_7.Position = UDim2.new(0.321336776, 0, 0.403841734, 0)
TextLabel_7.Size = UDim2.new(0, 138, 0, 32)
TextLabel_7.ZIndex = 1000
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "Auto Hoops"
TextLabel_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.TextSize = 30.000

AutoHoopsButton.Name = "AutoHoopsButton"
AutoHoopsButton.Parent = Farms
AutoHoopsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoHoopsButton.LayoutOrder = 5
AutoHoopsButton.Position = UDim2.new(0.419023156, 0, 0.467006803, 0)
AutoHoopsButton.Size = UDim2.new(0, 63, 0, 23)
AutoHoopsButton.ZIndex = 1000
AutoHoopsButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_8.Parent = AutoHoopsButton
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.Size = UDim2.new(0, 63, 0, 23)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "Auto Hoops"
TextLabel_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.TextSize = 14.000

ImageLabel_3.Parent = Farms
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.Position = UDim2.new(0.0462724939, 0, 0.531428576, 0)
ImageLabel_3.Size = UDim2.new(0, 340, 0, 1)
ImageLabel_3.ZIndex = 100000000
ImageLabel_3.Image = "http://www.roblox.com/asset/?id=6372436852"

TextLabel_9.Parent = Farms
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderSizePixel = 7
TextLabel_9.Position = UDim2.new(0.321336776, 0, 0.563841701, 0)
TextLabel_9.Size = UDim2.new(0, 138, 0, 32)
TextLabel_9.ZIndex = 1000
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "Auto CTF"
TextLabel_9.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.TextSize = 30.000

redFlagButton.Name = "redFlagButton"
redFlagButton.Parent = Farms
redFlagButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
redFlagButton.LayoutOrder = 5
redFlagButton.Position = UDim2.new(0.419023156, 0, 0.627006769, 0)
redFlagButton.Size = UDim2.new(0, 63, 0, 23)
redFlagButton.ZIndex = 1000
redFlagButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_10.Parent = redFlagButton
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.Size = UDim2.new(0, 63, 0, 23)
TextLabel_10.Font = Enum.Font.SourceSans
TextLabel_10.Text = "Red Flag"
TextLabel_10.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.TextSize = 14.000

yellowFlagButton.Name = "yellowFlagButton"
yellowFlagButton.Parent = Farms
yellowFlagButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
yellowFlagButton.LayoutOrder = 5
yellowFlagButton.Position = UDim2.new(0.419023156, 0, 0.67986393, 0)
yellowFlagButton.Size = UDim2.new(0, 63, 0, 23)
yellowFlagButton.ZIndex = 1000
yellowFlagButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_11.Parent = yellowFlagButton
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.Size = UDim2.new(0, 63, 0, 23)
TextLabel_11.Font = Enum.Font.SourceSans
TextLabel_11.Text = "Yellow Flag"
TextLabel_11.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.TextSize = 14.000

greenFlagButton.Name = "greenFlagButton"
greenFlagButton.Parent = Farms
greenFlagButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
greenFlagButton.LayoutOrder = 5
greenFlagButton.Position = UDim2.new(0.419023156, 0, 0.729863942, 0)
greenFlagButton.Size = UDim2.new(0, 63, 0, 23)
greenFlagButton.ZIndex = 1000
greenFlagButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_12.Parent = greenFlagButton
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.Size = UDim2.new(0, 63, 0, 23)
TextLabel_12.Font = Enum.Font.SourceSans
TextLabel_12.Text = "Green Flag"
TextLabel_12.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.TextSize = 14.000

ImageLabel_4.Parent = Farms
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.Position = UDim2.new(0.0462724939, 0, 0.800000072, 0)
ImageLabel_4.Size = UDim2.new(0, 340, 0, 1)
ImageLabel_4.ZIndex = 100000000
ImageLabel_4.Image = "http://www.roblox.com/asset/?id=6372436852"

TextLabel_13.Parent = Farms
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderSizePixel = 7
TextLabel_13.Position = UDim2.new(0.321336776, 0, 0.833841681, 0)
TextLabel_13.Size = UDim2.new(0, 138, 0, 32)
TextLabel_13.ZIndex = 1000
TextLabel_13.Font = Enum.Font.SourceSans
TextLabel_13.Text = "Auto KOTH"
TextLabel_13.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.TextSize = 30.000

autoKothButton.Name = "autoKothButton"
autoKothButton.Parent = Farms
autoKothButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
autoKothButton.LayoutOrder = 5
autoKothButton.Position = UDim2.new(0.419023156, 0, 0.905578256, 0)
autoKothButton.Size = UDim2.new(0, 63, 0, 23)
autoKothButton.ZIndex = 1000
autoKothButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_14.Parent = autoKothButton
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.Size = UDim2.new(0, 63, 0, 23)
TextLabel_14.Font = Enum.Font.SourceSans
TextLabel_14.Text = "Auto Koth"
TextLabel_14.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.TextSize = 14.000

Settings.Name = "Settings"
Settings.Parent = ScrollFrame
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.BorderSizePixel = 0
Settings.Size = UDim2.new(0, 389, 0, 700)
Settings.Visible = false

collectChestsButton.Name = "collectChestsButton"
collectChestsButton.Parent = Settings
collectChestsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
collectChestsButton.Position = UDim2.new(0.416452467, 0, 0.0912925005, 0)
collectChestsButton.Size = UDim2.new(0, 63, 0, 23)
collectChestsButton.ZIndex = 1000
collectChestsButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_15.Parent = collectChestsButton
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1.000
TextLabel_15.Size = UDim2.new(0, 63, 0, 23)
TextLabel_15.Font = Enum.Font.SourceSans
TextLabel_15.Text = "Grab Chests"
TextLabel_15.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_15.TextSize = 14.000

TextLabel_16.Parent = Settings
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1.000
TextLabel_16.BorderSizePixel = 7
TextLabel_16.Position = UDim2.new(0.321336776, 0, 0.00955601316, 0)
TextLabel_16.Size = UDim2.new(0, 138, 0, 32)
TextLabel_16.ZIndex = 1000
TextLabel_16.Font = Enum.Font.SourceSans
TextLabel_16.Text = "Game Settings"
TextLabel_16.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_16.TextSize = 30.000

ImageLabel_5.Parent = Settings
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.Position = UDim2.new(0.0616966598, 0, 0.0685714334, 0)
ImageLabel_5.Size = UDim2.new(0, 340, 0, 1)
ImageLabel_5.ZIndex = 100000000
ImageLabel_5.Image = "http://www.roblox.com/asset/?id=6372436852"

NameHideButton.Name = "NameHideButton"
NameHideButton.Parent = Settings
NameHideButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameHideButton.Position = UDim2.new(0.419023156, 0, 0.138435364, 0)
NameHideButton.Size = UDim2.new(0, 63, 0, 23)
NameHideButton.ZIndex = 1000
NameHideButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_17.Parent = NameHideButton
TextLabel_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.BackgroundTransparency = 1.000
TextLabel_17.Size = UDim2.new(0, 63, 0, 23)
TextLabel_17.Font = Enum.Font.SourceSans
TextLabel_17.Text = "Hide Name"
TextLabel_17.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_17.TextSize = 14.000
TextLabel_17.TextWrapped = true

InfJumpButton.Name = "InfJumpButton"
InfJumpButton.Parent = Settings
InfJumpButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfJumpButton.Position = UDim2.new(0.419023156, 0, 0.184149653, 0)
InfJumpButton.Size = UDim2.new(0, 63, 0, 23)
InfJumpButton.ZIndex = 1000
InfJumpButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_18.Parent = InfJumpButton
TextLabel_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_18.BackgroundTransparency = 1.000
TextLabel_18.Size = UDim2.new(0, 63, 0, 23)
TextLabel_18.Font = Enum.Font.SourceSans
TextLabel_18.Text = "Inf Jump"
TextLabel_18.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_18.TextSize = 14.000

UnlockIslandsButton.Name = "UnlockIslandsButton"
UnlockIslandsButton.Parent = Settings
UnlockIslandsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UnlockIslandsButton.Position = UDim2.new(0.419023156, 0, 0.23272109, 0)
UnlockIslandsButton.Size = UDim2.new(0, 63, 0, 23)
UnlockIslandsButton.ZIndex = 1000
UnlockIslandsButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_19.Parent = UnlockIslandsButton
TextLabel_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.BackgroundTransparency = 1.000
TextLabel_19.Size = UDim2.new(0, 63, 0, 23)
TextLabel_19.Font = Enum.Font.SourceSans
TextLabel_19.Text = "Unlock Islands"
TextLabel_19.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_19.TextScaled = true
TextLabel_19.TextSize = 14.000
TextLabel_19.TextWrapped = true

AutoBuy.Name = "AutoBuy"
AutoBuy.Parent = ScrollFrame
AutoBuy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoBuy.BackgroundTransparency = 1.000
AutoBuy.BorderSizePixel = 0
AutoBuy.Size = UDim2.new(0, 389, 0, 700)
AutoBuy.Visible = false

autoSwordsButton.Name = "autoSwordsButton"
autoSwordsButton.Parent = AutoBuy
autoSwordsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
autoSwordsButton.Position = UDim2.new(0.416452467, 0, 0.0912925005, 0)
autoSwordsButton.Size = UDim2.new(0, 63, 0, 23)
autoSwordsButton.ZIndex = 1000
autoSwordsButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_20.Parent = autoSwordsButton
TextLabel_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_20.BackgroundTransparency = 1.000
TextLabel_20.Size = UDim2.new(0, 63, 0, 23)
TextLabel_20.Font = Enum.Font.SourceSans
TextLabel_20.Text = "Swords"
TextLabel_20.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_20.TextSize = 14.000

TextLabel_21.Parent = AutoBuy
TextLabel_21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_21.BackgroundTransparency = 1.000
TextLabel_21.BorderSizePixel = 7
TextLabel_21.Position = UDim2.new(0.321336776, 0, 0.00955601316, 0)
TextLabel_21.Size = UDim2.new(0, 138, 0, 32)
TextLabel_21.ZIndex = 1000
TextLabel_21.Font = Enum.Font.SourceSans
TextLabel_21.Text = "Auto Buy"
TextLabel_21.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_21.TextSize = 30.000

ImageLabel_6.Parent = AutoBuy
ImageLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_6.Position = UDim2.new(0.0616966598, 0, 0.0685714334, 0)
ImageLabel_6.Size = UDim2.new(0, 340, 0, 1)
ImageLabel_6.ZIndex = 100000000
ImageLabel_6.Image = "http://www.roblox.com/asset/?id=6372436852"

autoRankButton.Name = "autoRankButton"
autoRankButton.Parent = AutoBuy
autoRankButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
autoRankButton.Position = UDim2.new(0.419023156, 0, 0.138435364, 0)
autoRankButton.Size = UDim2.new(0, 63, 0, 23)
autoRankButton.ZIndex = 1000
autoRankButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_22.Parent = autoRankButton
TextLabel_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_22.BackgroundTransparency = 1.000
TextLabel_22.Size = UDim2.new(0, 63, 0, 23)
TextLabel_22.Font = Enum.Font.SourceSans
TextLabel_22.Text = "Rank"
TextLabel_22.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_22.TextSize = 14.000
TextLabel_22.TextWrapped = true

autoRebirthButton.Name = "autoRebirthButton"
autoRebirthButton.Parent = AutoBuy
autoRebirthButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
autoRebirthButton.Position = UDim2.new(0.419023156, 0, 0.184149653, 0)
autoRebirthButton.Size = UDim2.new(0, 63, 0, 23)
autoRebirthButton.ZIndex = 1000000000
autoRebirthButton.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_23.Parent = autoRebirthButton
TextLabel_23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_23.BackgroundTransparency = 1.000
TextLabel_23.Size = UDim2.new(0, 63, 0, 23)
TextLabel_23.Font = Enum.Font.SourceSans
TextLabel_23.Text = "Rebirth"
TextLabel_23.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_23.TextSize = 14.000
TextLabel_23.TextWrapped = true

autoSellPower.Name = "autoSellPower"
autoSellPower.Parent = AutoBuy
autoSellPower.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
autoSellPower.Position = UDim2.new(0.419023156, 0, 0.228435367, 0)
autoSellPower.Size = UDim2.new(0, 63, 0, 23)
autoSellPower.ZIndex = 1000000000
autoSellPower.Image = "http://www.roblox.com/asset/?id=6372455265"

TextLabel_24.Parent = autoSellPower
TextLabel_24.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_24.BackgroundTransparency = 1.000
TextLabel_24.Size = UDim2.new(0, 63, 0, 23)
TextLabel_24.Font = Enum.Font.SourceSans
TextLabel_24.Text = "Sell Power"
TextLabel_24.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_24.TextSize = 14.000
TextLabel_24.TextWrapped = true

SelectFrame.Name = "SelectFrame"
SelectFrame.Parent = Main
SelectFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectFrame.Position = UDim2.new(0.0232446976, 0, 0.0951008648, 0)
SelectFrame.Size = UDim2.new(0, 133, 0, 296)
SelectFrame.ZIndex = 3

homeButton.Name = "homeButton"
homeButton.Parent = Main
homeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
homeButton.BorderSizePixel = 0
homeButton.Position = UDim2.new(0.0232446976, 0, 0.206219763, 0)
homeButton.Size = UDim2.new(0, 133, 0, 25)
homeButton.ZIndex = 4
homeButton.Font = Enum.Font.SourceSans
homeButton.Text = "Home"
homeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
homeButton.TextScaled = true
homeButton.TextSize = 14.000
homeButton.TextWrapped = true

Logooptional.Name = "Logo(optional)"
Logooptional.Parent = Main
Logooptional.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logooptional.BorderSizePixel = 0
Logooptional.Size = UDim2.new(0, 30, 0, 23)
Logooptional.Image = "http://www.roblox.com/asset/?id=6372547991"

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0718132854, 0, 0, 0)
Title.Size = UDim2.new(0, 454, 0, 23)
Title.ZIndex = 2
Title.Font = Enum.Font.Cartoon
Title.Text = "GoodNite GUI - [ DohmScripts.com ] - KnightHeroes.exe"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 23.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Bottom

features.Name = "features"
features.Parent = Main
features.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
features.BackgroundTransparency = 1.000
features.BorderSizePixel = 0
features.Position = UDim2.new(0.0379275419, 0, 0.0951008648, 0)
features.Size = UDim2.new(0, 116, 0, 25)
features.ZIndex = 4
features.Font = Enum.Font.Cartoon
features.Text = "Main Menu"
features.TextColor3 = Color3.fromRGB(0, 0, 0)
features.TextScaled = true
features.TextSize = 14.000
features.TextWrapped = true

autoBuyButton.Name = "autoBuyButton"
autoBuyButton.Parent = Main
autoBuyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
autoBuyButton.BorderSizePixel = 0
autoBuyButton.Position = UDim2.new(0.0232446976, 0, 0.389510095, 0)
autoBuyButton.Size = UDim2.new(0, 132, 0, 25)
autoBuyButton.ZIndex = 10000000
autoBuyButton.Font = Enum.Font.SourceSans
autoBuyButton.Text = "Auto Buy"
autoBuyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
autoBuyButton.TextScaled = true
autoBuyButton.TextSize = 14.000
autoBuyButton.TextWrapped = true

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = Main
SettingsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingsButton.BorderSizePixel = 0
SettingsButton.Position = UDim2.new(0.0268353615, 0, 0.48172912, 0)
SettingsButton.Size = UDim2.new(0, 131, 0, 25)
SettingsButton.ZIndex = 1000000000
SettingsButton.Font = Enum.Font.SourceSans
SettingsButton.Text = "Settings"
SettingsButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SettingsButton.TextScaled = true
SettingsButton.TextSize = 14.000
SettingsButton.TextWrapped = true

autoFarmButton.Name = "autoFarmButton"
autoFarmButton.Parent = Main
autoFarmButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
autoFarmButton.BorderSizePixel = 0
autoFarmButton.Position = UDim2.new(0.023, 0, 0.300172925, 0)
autoFarmButton.Size = UDim2.new(0, 133, 0, 25)
autoFarmButton.ZIndex = 1000
autoFarmButton.Font = Enum.Font.SourceSans
autoFarmButton.Text = "Auto Farms"
autoFarmButton.TextColor3 = Color3.fromRGB(0, 0, 0)
autoFarmButton.TextScaled = true
autoFarmButton.TextSize = 14.000
autoFarmButton.TextWrapped = true

Main.Active = true
Main.Draggable = true

Main:TweenPosition(UDim2.new(0.0, 5, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)

closeB.MouseButton1Click:Connect(
    function()
        Main:Destroy()
    end
)

homeButton.MouseButton1Click:Connect(
    function()
        if Home.Visible == false then
            Farms.Visible = false
            Home.Visible = true
            AutoBuy.Visible = false
            Settings.Visible = false
        end
    end
)

autoFarmButton.MouseButton1Click:Connect(
    function()
        if Farms.Visible == false then
            Farms.Visible = true
            Home.Visible = false
            AutoBuy.Visible = false
            Settings.Visible = false
        end
    end
)

SettingsButton.MouseButton1Click:Connect(
    function()
        if Settings.Visible == false then
            Farms.Visible = false
            Home.Visible = false
            AutoBuy.Visible = false
            Settings.Visible = true
        end
    end
)

autoBuyButton.MouseButton1Click:Connect(
    function()
        if AutoBuy.Visible == false then
            Farms.Visible = false
            Home.Visible = false
            Settings.Visible = false
            AutoBuy.Visible = true
        end
    end
)

redButton.MouseButton1Click:Connect(
    function()
        if redState == false then
            redButton.ImageColor3 = Color3.fromRGB(150, 150, 150)
            redState = true
            getgenv().BossAttack = true
            attackBosses("Red Knight")
        else
            redButton.ImageColor3 = Color3.fromRGB(255, 255, 255)

            redState = false
            getgenv().BossAttack = false
            _G.connection:Disconnect()
        end
    end
)

HolyButton.MouseButton1Click:Connect(
    function()
        if holyState == false then
            HolyButton.ImageColor3 = Color3.fromRGB(150, 150, 150)

            holyState = true
            getgenv().BossAttack = true
            attackBosses("Holy Knight")
        else
            HolyButton.ImageColor3 = Color3.fromRGB(255, 255, 255)

            holyState = false
            getgenv().BossAttack = false
            _G.connection:Disconnect()
        end
    end
)

DarkButton.MouseButton1Click:Connect(
    function()
        if darkState == false then
            DarkButton.ImageColor3 = Color3.fromRGB(150, 150, 150)

            darkState = true
            getgenv().BossAttack = true
            attackBosses("Dark Knight")
        else
            DarkButton.ImageColor3 = Color3.fromRGB(255, 255, 255)

            darkState = false
            getgenv().BossAttack = false
            _G.connection:Disconnect()
        end
    end
)

AutoPowerButton.MouseButton1Click:Connect(
    function()
        if powerState == false then
            AutoPowerButton.ImageColor3 = Color3.fromRGB(150, 150, 150)

            powerState = true
            getgenv().FarmPower = true
            autoFarmPower()
        else
            AutoPowerButton.ImageColor3 = Color3.fromRGB(255, 255, 255)

            powerState = false
            getgenv().FarmPower = false
        end
    end
)

AutoHoopsButton.MouseButton1Click:Connect(
    function()
        if hoopsState == false then
            AutoHoopsButton.ImageColor3 = Color3.fromRGB(150, 150, 150)

            hoopsState = true
            getgenv().AutoHoop = true
            autoHoops()
        else
            AutoHoopsButton.ImageColor3 = Color3.fromRGB(255, 255, 255)

            hoopsState = false
            getgenv().AutoHoop = false
        end
    end
)

redFlagButton.MouseButton1Click:Connect(
    function()
        if redFlagState == false then
            redFlagButton.ImageColor3 = Color3.fromRGB(150, 150, 150)

            redFlagState = true
            thisPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CTF.Home.RedFlag[1]) * CFrame.new(0, 1, 0)
            wait(0.8)
            _G.ctfcon = game:GetService("RunService").Stepped:connect(float)
            wait(0.8)
            thisPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CTF.Home.RedFlag[1]) * CFrame.new(0, -10, 0)
            wait(0.8)
            m.GetEvent("UpdateCTF"):Fire("RedFlag")
        else
            _G.ctfcon:Disconnect()
            wait(0.8)
            thisPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CTF.Home.RedFlag[1]) * CFrame.new(0, 10, 0)
            redFlagButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
            redFlagState = false
        end
    end
)

yellowFlagButton.MouseButton1Click:Connect(
    function()
        if yellowFlagState == false then
            yellowFlagButton.ImageColor3 = Color3.fromRGB(150, 150, 150)

            yellowFlagState = true
            thisPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CTF.Home.YellowFlag[1]) * CFrame.new(0, 1, 0)
            wait(0.8)
            _G.ctfcon = game:GetService("RunService").Stepped:connect(float)
            wait(0.8)
            thisPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CTF.Home.YellowFlag[1]) * CFrame.new(0, -10, 0)
            wait(0.8)
            m.GetEvent("UpdateCTF"):Fire("YellowFlag")
        else
            _G.ctfcon:Disconnect()
            wait(0.8)
            thisPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CTF.Home.YellowFlag[1]) * CFrame.new(0, 10, 0)
            yellowFlagButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
            yellowFlagState = false
        end
    end
)

greenFlagButton.MouseButton1Click:Connect(
    function()
        if greenFlagState == false then
            greenFlagButton.ImageColor3 = Color3.fromRGB(150, 150, 150)

            greenFlagState = true
            thisPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CTF.Home.GreenFlag[1]) * CFrame.new(0, 1, 0)
            wait(0.8)
            _G.ctfcon = game:GetService("RunService").Stepped:connect(float)
            wait(0.8)
            thisPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CTF.Home.GreenFlag[1]) * CFrame.new(0, -10, 0)
            wait(0.8)
            m.GetEvent("UpdateCTF"):Fire("GreenFlag")
        else
            _G.ctfcon:Disconnect()
            wait(0.8)
            thisPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CTF.Home.GreenFlag[1]) * CFrame.new(0, 10, 0)
            greenFlagButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
            greenFlagState = false
        end
    end
)

autoKothButton.MouseButton1Click:Connect(
    function()
        if kothState == false then
            autoKothButton.ImageColor3 = Color3.fromRGB(150, 150, 150)

            kothState = true
            _G.kingconc = game:GetService("RunService").Stepped:connect(float)
            wait(0.8)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(KOTH) * CFrame.new(0, -5, 0)
            wait(0.8)
            m.GetEvent("UpdateKOTH"):Fire()
        else
            _G.kingconc:Disconnect()
            wait(0.8)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(KOTH) * CFrame.new(0, 10, 0)

            autoKothButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
            kothState = false
        end
    end
)

collectChestsButton.MouseButton1Click:Connect(
    function()
        collectChestsButton.ImageColor3 = Color3.fromRGB(150, 150, 150)
        collectReadyChests()
        wait(0.2)
        collectChestsButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
    end
)

NameHideButton.MouseButton1Click:Connect(
    function()
        NameHideButton.ImageColor3 = Color3.fromRGB(150, 150, 150)
        nameHide()
        wait(0.2)
        NameHideButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
    end
)

InfJumpButton.MouseButton1Click:Connect(
    function()
        InfJumpButton.ImageColor3 = Color3.fromRGB(150, 150, 150)
        infJump()
        wait(0.2)
        InfJumpButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
    end
)

UnlockIslandsButton.MouseButton1Click:Connect(
    function()
        UnlockIslandsButton.ImageColor3 = Color3.fromRGB(150, 150, 150)
        unlockIslands()
        wait(0.2)
        UnlockIslandsButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
    end
)

autoSwordsButton.MouseButton1Click:Connect(
    function()
        if autobuySwordState == false then
            autoSwordsButton.ImageColor3 = Color3.fromRGB(150, 150, 150)

            autobuySwordState = true
            getgenv().AutoBuyS = true
        else
            autoSwordsButton.ImageColor3 = Color3.fromRGB(255, 255, 255)

            autobuySwordState = false
            getgenv().AutoBuyS = false
        end
    end
)

autoRankButton.MouseButton1Click:Connect(
    function()
        if autobuyRankState == false then
            autoRankButton.ImageColor3 = Color3.fromRGB(150, 150, 150)

            autobuyRankState = true
            getgenv().AutoBuyR = true
        else
            autoRankButton.ImageColor3 = Color3.fromRGB(255, 255, 255)

            autobuyRankState = false
            getgenv().AutoBuyR = false
        end
    end
)

autoRebirthButton.MouseButton1Click:Connect(
    function()
        if  autobuyRebirthState == false then
            autoRebirthButton.ImageColor3 = Color3.fromRGB(150, 150, 150)

            autobuyRebirthState = true
            getgenv().AutoBuyRB = true
        else
            autoRebirthButton.ImageColor3 = Color3.fromRGB(255, 255, 255)

             autobuyRebirthState = false
            getgenv().AutoBuyRB = false
        end
    end
)

autoSellPower.MouseButton1Click:Connect(
    function()
        if  autobuyPowerState == false then
            autoSellPower.ImageColor3 = Color3.fromRGB(150, 150, 150)

            autobuyPowerState = true
            getgenv().AutoBuyPP= true
        else
           autoSellPower.ImageColor3 = Color3.fromRGB(255, 255, 255)

             autobuyPowerState = false
            getgenv().AutoBuyPP = false
        end
    end
)



tray.MouseButton1Click:Connect(
    function()
        Main:TweenPosition(UDim2.new(0.008, 0, 0.976, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
    end
)

function zeroSwords()
    for _, v in pairs(zeroCostSwords.Data.Home) do
        v.Price[2] = "0"
    end
end

function infJump()
    infiniteJumps.UpdateMaxJumps(math.huge)
end

local timer = 0
function autoFarmPower()
    while wait() and getgenv().FarmPower do
        for i = 1, 2 do
            m.GetEvent("UpdateSwords"):Fire("SwingSword")
        end
        game:GetService("RunService").Heartbeat:wait()
        if getgenv().AutoBuyPP then
            m.GetEvent("UpdateSwords"):Fire("SellPower")
        end
        
        timer = timer + 1
        print(timer)
        if getgenv().AutoBuyS and timer == 1000 then
            yesAutoBuy('Home')
            yesAutoBuy('Mystic')
            yesAutoBuy('Unknown')
            yesAutoBuy('Tundra')
            yesAutoBuy('Thunder')
            yesAutoBuy('Inferno')
            yesAutoBuy('Void')
            yesAutoBuy('Dragon')
            
            if getgenv().AutoBuyRB == false and getgenv().AutoBuyR == false then
                timer = 0
            end
            
            
        end
        if getgenv().AutoBuyRB and timer == 2000 then
            AutoRebirth()
        end
        
        if getgenv().AutoBuyR == false then
                timer = 0
        end
        if getgenv().AutoBuyR and timer == 3000 then
            BuyRank('Noob')
            BuyRank('Warrior')
            BuyRank('Assassin')
            BuyRank('Knight')
            BuyRank('Hero')
            BuyRank('Avenger')
            BuyRank('Realm Protector')
            BuyRank('Dragon Warrior')
            BuyRank('Ultra Champion')
            BuyRank('Knight Hero')
            BuyRank('Knight Defender')
            BuyRank('Overseer Champion')
            BuyRank('Ultimate Hero')
            BuyRank('Chaotic Ninja')
            BuyRank('Corrupted Defender')
            BuyRank('Cybernetic Protector')
            BuyRank('Unleashed Chaos Warrior')
            BuyRank('Dark Hero')
            BuyRank('Cybernetic Knight')
            BuyRank('Elemental Dragon Warrior')
            BuyRank('Shadow Assassin')
            BuyRank('Rising Hero')
            BuyRank('Hero Hunter')
            timer = 0
        end
        
            
            
        
        
            
    end
end

function unlockIslands()
    for _, v in pairs(IslandPositions) do
        wait(.8)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v)
    end
end

function nameHide()
    if thisPlayer.Character.Head:FindFirstChild("Overhead") then
        thisPlayer.Character.Head.Overhead:Destroy()
    end
end

function checkChestReady(gamechest)
    if pdata.Others.Rewards.Chests[gamechest][2] <= os.time() - pdata.Others.Rewards.Chests[gamechest][1] then
        return true
    else
        return false
    end
end

function collectReadyChests()
    for _, v in pairs(chestnames) do
        if checkChestReady(v) then
            wait(0.8)
            m.GetEvent("UpdateChests"):Fire(v)
        else
            warn("Chest " .. v .. " is not ready!")
        end
    end
end

function autoHoops()
    while wait() and getgenv().AutoHoop do
        for _, v in pairs(gameRings:GetDescendants()) do
            if v:IsA("TouchTransmitter") then
                firetouchinterest(thisPlayer.Character.HumanoidRootPart, v.Parent, 0)
                wait()
                firetouchinterest(thisPlayer.Character.HumanoidRootPart, v.Parent, 1)
            end
        end
    end
end



function yesAutoBuy(island)
    for name, v in pairs(swords.Data) do
        if name == island then
            for o, p in pairs(v) do
                if pdata.Userstats.Coins >= tonumber(p.Price[2]) and  pdata.Inventory.Swords.Owned[o] == nil then
                        wait(1)
                        m.GetEvent("UpdateSwords"):Fire("BuySword", island, o)
                        print("Buying Sword " .. o)
                        clickExit()
                    else
                        print("Dont Buy")
                        clickExit()
                    end
                end
            end
        end
    end

function clickExit()
    for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Display:GetDescendants()) do
        if v:IsA("Frame") and v.Name == "Exit" then
            for p, o in pairs(getconnections(v.Button.MouseButton1Click)) do
                o:Fire()
            end
        end
    end
end

function AutoRebirth()
    if getgenv().AutoBuyRB then
        m.GetEvent("UpdateRebirths"):Fire("BuyRebirth", 1)
    end
    
end

function BuyRank(rnk)
    for name, v in pairs(pranks.Data) do
        if name == rnk then
            if pdata.Userstats.Coins >= tonumber(v.Price[1]) and  pdata.Inventory.Ranks.Owned[rnk] == nil then
                        wait(1)
                        m.GetEvent("UpdateRanks"):Fire("BuyRank", name)
                        print("Buying Rank " .. name)
                        clickExit()
                    else
                        print("Dont Buy")
                        clickExit()
                    end
                end
            end
        end
 

function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Insert then
        if Main.Position == UDim2.new(0.008, 0, 0.976, 0) then
            Main:TweenPosition(UDim2.new(0.005, 0, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
        else
            Main:TweenPosition(UDim2.new(0.008, 0, 0.976, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
        end
    end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)

function float()
    pcall(
        function()
            thisPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(11)
        end
    )
end

function attackBosses(bossname)
    while wait() and getgenv().BossAttack do
        if game:GetService("Workspace"):WaitForChild("Bosses")[bossname]:WaitForChild("Model"):WaitForChild(bossname) then
            _G.connection = game:GetService("RunService").Stepped:connect(float)
            repeat
                game:GetService("RunService").Heartbeat:wait()
                thisPlayer.Character.HumanoidRootPart.CFrame =
                    game:GetService("Workspace").Bosses[bossname].Model:WaitForChild(bossname).HumanoidRootPart.CFrame

                for i = 1, 20 do
                    if bossname == "Holy Knight" then
                        m.GetEvent("UpdateBoss"):Fire(
                            "DamageBoss",
                            workspace.Bosses[bossname].Model:WaitForChild(bossname).LowerTorso:WaitForChild "MeshPart",
                            bossname
                        )
                    end
                    if bossname == "Red Knight" then
                        m.GetEvent("UpdateBoss"):Fire(
                            "DamageBoss",
                            workspace.Bosses[bossname].Model:WaitForChild(bossname).UpperTorso:WaitForChild "MeshPart",
                            bossname
                        )
                    end
                    if bossname == "Dark Knight" then
                        m.GetEvent("UpdateBoss"):Fire(
                            "DamageBoss",
                            workspace.Bosses[bossname].Model:WaitForChild(bossname).UpperTorso:WaitForChild "MeshPart",
                            bossname
                        )
                        m.GetEvent("UpdateBoss"):Fire(
                            "DamageBoss",
                            workspace.Bosses[bossname].Model:WaitForChild(bossname).LowerTorso:WaitForChild "MeshPart",
                            bossname
                        )
                    end
                end

                wait(0.8)
            until not game:GetService("Workspace").Bosses[bossname].Model:FindFirstChild(bossname) or
                getgenv().BossAttack == false
            _G.connection:Disconnect()
        end
        _G.connection:Disconnect()
    end
    _G.connection:Disconnect()
end
