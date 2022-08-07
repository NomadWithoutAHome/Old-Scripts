local thisPlayer = game:GetService("Players").LocalPlayer

local tycoons = game:GetService("Workspace").Tycoons
local tycoonTrash = game:GetService("Workspace").Trash
local animals = game:GetService("Workspace").Mobs
local kibble = thisPlayer.PlayerScripts.FoodGiverClient.Food
local cash = thisPlayer.PlayerData.Money.Value

local homeButtonState = false
local poopButtonState = false
local cleanButtonState = false
local buyButtonState = false
local AutoFeedButtonState = false
local MovementButtonState = false

local TrashBool = false
local PoopBool = false
local FeedBool = false
local BuyBool = false

local DohmScripts = Instance.new("ScreenGui")
local Home = Instance.new("ImageButton")
local optionsFrame = Instance.new("Frame")
local CleanPoop = Instance.new("ImageButton")
local CleanTrash = Instance.new("ImageButton")
local AutoBuy = Instance.new("ImageButton")
local AutoFeed = Instance.new("ImageButton")
local Movement = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

Home.Name = "Home"
Home.Parent = DohmScripts
Home.Parent = game.Players.LocalPlayer.PlayerGui.UI.MainPlayerFrame.Left
Home.Active = true
Home.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Home.BackgroundTransparency = 1.000
Home.Position = UDim2.new(0.7, 0, 0.672311246, 0)
Home.Size = UDim2.new(0.312404662, 0, 0.123745829, 0)
Home.Image = "rbxassetid://6469285687"

optionsFrame.Name = "optionsFrame"
optionsFrame.Parent = Home
optionsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
optionsFrame.BackgroundTransparency = 1.000
optionsFrame.Position = UDim2.new(0.461564332, 0, 0.992134392, 0)
optionsFrame.Size = UDim2.new(0, 579, 0, 75)
optionsFrame.Visible = false

CleanPoop.Name = "CleanPoop"
CleanPoop.Parent = optionsFrame
CleanPoop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CleanPoop.BackgroundTransparency = 1.000
CleanPoop.Position = UDim2.new(-0.00120728277, 0, -0.0478655845, 0)
CleanPoop.Size = UDim2.new(0, 122, 0, 81)
CleanPoop.Image = "http://www.roblox.com/asset/?id=6471137574"
CleanPoop.ScaleType = Enum.ScaleType.Tile

CleanTrash.Name = "CleanTrash"
CleanTrash.Parent = optionsFrame
CleanTrash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CleanTrash.BackgroundTransparency = 1.000
CleanTrash.Position = UDim2.new(0.225044847, 0, 0.0250667296, 0)
CleanTrash.Size = UDim2.new(0, 122, 0, 69)
CleanTrash.Image = "http://www.roblox.com/asset/?id=6471207956"
CleanTrash.ScaleType = Enum.ScaleType.Tile

AutoBuy.Name = "AutoBuy"
AutoBuy.Parent = optionsFrame
AutoBuy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoBuy.BackgroundTransparency = 1.000
AutoBuy.Position = UDim2.new(0.454751253, 0, 0.0250667296, 0)
AutoBuy.Size = UDim2.new(0, 122, 0, 69)
AutoBuy.Image = "http://www.roblox.com/asset/?id=6471294634"
AutoBuy.ScaleType = Enum.ScaleType.Tile

AutoFeed.Name = "AutoFeed"
AutoFeed.Parent = optionsFrame
AutoFeed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoFeed.BackgroundTransparency = 1.000
AutoFeed.Position = UDim2.new(0.687392056, 0, 0.0266666673, 0)
AutoFeed.Size = UDim2.new(0, 122, 0, 69)
AutoFeed.Image = "http://www.roblox.com/asset/?id=6474498134"
AutoFeed.ScaleType = Enum.ScaleType.Tile

Movement.Name = "Movement"
Movement.Parent = optionsFrame
Movement.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Movement.BackgroundTransparency = 1.000
Movement.Position = UDim2.new(0.918825567, 0, 0.0266666673, 0)
Movement.Size = UDim2.new(0, 122, 0, 69)
Movement.Image = "http://www.roblox.com/asset/?id=6474500401"
Movement.ScaleType = Enum.ScaleType.Tile

UIAspectRatioConstraint.Parent = Home
UIAspectRatioConstraint.AspectRatio = 1.066

Home.MouseButton1Click:Connect(
    function()
        if homeButtonState == false and optionsFrame.Visible == false then
            Home.Image = "rbxassetid://6471020395"

            homeButtonState = true
            optionsFrame.Visible = true
        else
            Home.Image = "rbxassetid://6469285687"

            homeButtonState = false
            optionsFrame.Visible = false
        end
    end
)

CleanPoop.MouseButton1Click:Connect(
    function()
        if poopButtonState == false then
            CleanPoop.Image = "rbxassetid://6471138107"

            poopButtonState = true
            PoopBool = true
            game:GetService("ReplicatedStorage").BindableEvents.SendNotification:Fire(
                "[DohmScripts:] Auto Poop Collector Activated"
            )
        else
            CleanPoop.Image = "rbxassetid://6471137574"

            poopButtonState = false
            PoopBool = false
            game:GetService("ReplicatedStorage").BindableEvents.SendNotification:Fire(
                "[DohmScripts:] Auto Poop Collector Deactivated"
            )
        end
    end
)

CleanTrash.MouseButton1Click:Connect(
    function()
        if cleanButtonState == false then
            CleanTrash.Image = "rbxassetid://6472365881"

            cleanButtonState = true
            TrashBool = true
            game:GetService("ReplicatedStorage").BindableEvents.SendNotification:Fire(
                "[DohmScripts:] Auto Trash Collector Activated"
            )
        else
            CleanTrash.Image = "rbxassetid://6471207956"

            cleanButtonState = false
            TrashBool = false
            game:GetService("ReplicatedStorage").BindableEvents.SendNotification:Fire(
                "[DohmScripts:] Auto Poop Collector Deactivated"
            )
        end
    end
)

AutoBuy.MouseButton1Click:Connect(
    function()
        if buyButtonState == false then
            AutoBuy.Image = "rbxassetid://6472412322"

            buyButtonState = true
            BuyBool = true
            game:GetService("ReplicatedStorage").BindableEvents.SendNotification:Fire(
                "[DohmScripts:] Auto Trash Collector Activated"
            )
        else
            AutoBuy.Image = "rbxassetid://6471294634"

            buyButtonState = false
            BuyBool = false
            game:GetService("ReplicatedStorage").BindableEvents.SendNotification:Fire(
                "[DohmScripts:] Auto Trash Collector Deactivated"
            )
        end
    end
)

AutoFeed.MouseButton1Click:Connect(
    function()
        if AutoFeedButtonState == false then
            AutoFeed.Image = "rbxassetid://6474497501"

            AutoFeedButtonState = true
            FeedBool = true
            game:GetService("ReplicatedStorage").BindableEvents.SendNotification:Fire(
                "[DohmScripts:] Auto Feed Collector Activated"
            )
        else
            AutoFeed.Image = "rbxassetid://6474498134"

            AutoFeedButtonState = false
            FeedBool = false
            game:GetService("ReplicatedStorage").BindableEvents.SendNotification:Fire(
                "[DohmScripts:] Auto Feed Collector Deactivated"
            )
        end
    end
)

Movement.MouseButton1Click:Connect(
    function()
        if MovementButtonState == false then
            Movement.Image = "rbxassetid://6474498723"

            MovementButtonState = true
            game:GetService("ReplicatedStorage").BindableEvents.SendNotification:Fire(
                "[DohmScripts:] 2x Movement Activated"
            )
            thisPlayer.Character.Humanoid.WalkSpeed = 50
        else
            Movement.Image = "rbxassetid://6474500401"

            MovementButtonState = false
            game:GetService("ReplicatedStorage").BindableEvents.SendNotification:Fire(
                "[DohmScripts:] 2x Movement Deactivated"
            )
            thisPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end
)

function getTycoon()
    for _, v in pairs(tycoons:GetChildren()) do
        if v:IsA("Folder") and v.Name == tostring(thisPlayer.UserId) then
            return v
        end
    end
end

function collectTrash()
    for _, v in pairs(tycoonTrash:GetDescendants()) do
        if v:IsA("ClickDetector") then
            v.MaxActivationDistance = math.huge
            fireclickdetector(v)
        end
    end
end

function collectPoop()
    for _, v in pairs(getTycoon().Poop:GetDescendants()) do
        if v:IsA("ClickDetector") then
            v.MaxActivationDistance = math.huge
            fireclickdetector(v)
        end
    end
end

function getOwnedAnimals()
    for _, v in pairs(animals:GetDescendants()) do
        if v.Name == "Owner" and v.Value == thisPlayer.UserId then
            return v.Parent
        end
    end
end

function giveAnimalFood()
    kibble:Clone().Parent = thisPlayer.Backpack
end

function feedOwnedAnimals()
    for _, v in pairs(animals:GetDescendants()) do
        if v.Name == "Owner" and v.Value == thisPlayer.UserId then
            if v.Parent.MobHunger.Value < 50 then
                game:GetService("ReplicatedStorage").Remotes.Events.Animals.Feed:FireServer(v.Parent)
                print("Feeding " .. v.Parent.Name)
            end
        end
    end
end

function tycoonAutoBuy()
    print("Attempting Auto Buy...")
    for _, v in pairs(getTycoon().PurchaseButtons:GetDescendants()) do
        if v.Name == "PurchaseCost" and v.Value > 0 and cash >= v.Value and v.Parent.Purchase.Bottom.Transparency == 0 then
            game:GetService("ReplicatedStorage").Events.Buttons.Purchase:InvokeServer(v.Parent.Name, 1)
            print(v.Value)
        end
    end
end

while wait() do
    if TrashBool and #tycoonTrash:GetChildren() > 0 then
        spawn(collectTrash)
    end
    if PoopBool then
        spawn(collectPoop)
    end
    if FeedBool then
        spawn(feedOwnedAnimals)
    end
    if BuyBool and wait(30) then
        spawn(tycoonAutoBuy)
    end
end




