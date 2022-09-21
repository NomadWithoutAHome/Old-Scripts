---[ Standard Setups ]---
local thisPlayer = game:GetService("Players").LocalPlayer

---[ Locations ]---
local giftLocations = game:GetService("Workspace").giftSpawns
local playerBases = game:GetService("Workspace").snowmanBases
local playerStorage = game:GetService("Players").LocalPlayer.localData.sackStorage
local playerBallcount = game:GetService("Players").LocalPlayer.localData.snowballs
local playerBallsize = thisPlayer.info.snowmanBallSize
local rebirth = thisPlayer.RespawnLocation.Parent.rebirthActive

---[ Remotes ]===
local snowballRemote = game:GetService("ReplicatedStorage").Signals.snowballController
local snowballRemoteInvoke = game:GetService("ReplicatedStorage").Signals.snowballControllerFunc
local snowballAdd = game:GetService("ReplicatedStorage").Signals.addToSnowman
local snowballCollect = game:GetService("ReplicatedStorage").Signals.collectSnow
local snowmanController = game:GetService("ReplicatedStorage").Signals.snowmanEvent

function getMaxSizeFromLevel(p1)
    return 6 + (22 - 6) * math.clamp(p1.localData.collecting.Value / 500, 0, 1)
end

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

task.spawn(
    function()
        while task.wait(2) do
            print('Checking Rebirth Status')
            if rebirth.Value == false then
                snowballRemote:FireServer("startRoll")
                print('Starting Roll')
                repeat
                    snowballCollect:FireServer()
                    print('Collecting')
                    task.wait()
                    print('Checking Until')
                until playerBallsize.Value >= getMaxSizeFromLevel(thisPlayer) or playerBallcount.Value == playerStorage.Value 
                print('Stopping Roll')
                snowballRemoteInvoke:InvokeServer("stopRoll")
                if playerBallcount.Value == playerStorage.Value then
                    print('Adding Snowman')
                    snowballAdd:FireServer("addToSnowman")
                end
                task.wait(2)
                print('Done Waiting')
            end
            print('Checking Gift')
            snowman_gift()
        end
    end
)

    





    
