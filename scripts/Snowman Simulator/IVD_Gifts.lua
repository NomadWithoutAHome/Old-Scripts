local paradaxlib = {}

function paradaxlib:Init(uiName)
    if uiName == nil then
        warn("Paradax UI Lib: no name given in :Init()")
        return
    end

    local DarkParadaxUI = Instance.new("ScreenGui")
    local Login = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Key = Instance.new("Frame")
    local TextBox = Instance.new("TextBox")
    local UICorner_2 = Instance.new("UICorner")
    local UICorner_3 = Instance.new("UICorner")
    local UUID = Instance.new("Frame")
    local TextBox_2 = Instance.new("TextBox")
    local UICorner_4 = Instance.new("UICorner")
    local UICorner_5 = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local UICorner_6 = Instance.new("UICorner")
    local ImageLabel = Instance.new("ImageLabel")
    local confirm = Instance.new("TextButton")
    local UICorner_7 = Instance.new("UICorner")
    local discord = Instance.new("TextButton")
    local UICorner_8 = Instance.new("UICorner")
    local display = Instance.new("Frame")
    local Status = Instance.new("TextLabel")
    local Main = Instance.new("Frame")
    local TopTab = Instance.new("Frame")
    local GameTitle = Instance.new("TextLabel")
    local UICorner_9 = Instance.new("UICorner")
    local Toggle = Instance.new("TextButton")
    local UICorner_10 = Instance.new("UICorner")
    local Box = Instance.new("Frame")
    local UICorner_11 = Instance.new("UICorner")
    local SP = Instance.new("Frame")
    local UICorner_12 = Instance.new("UICorner")
    local butList = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local settingF = Instance.new("Frame")
    local UICorner_13 = Instance.new("UICorner")
    local settinglist = Instance.new("Frame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local destroy = Instance.new("Frame")
    local UICorner_14 = Instance.new("UICorner")
    local Button = Instance.new("TextButton")
    local UICorner_15 = Instance.new("UICorner")
    local HideGui = Instance.new("Frame")
    local UICorner_16 = Instance.new("UICorner")
    local BindButton = Instance.new("TextButton")
    local UICorner_17 = Instance.new("UICorner")
    local Label = Instance.new("TextLabel")
    local DiscName = Instance.new("TextButton")
    local ParadaxLogo = Instance.new("ImageLabel")
    local setting = Instance.new("ImageButton")
    local ParadaxLogo_2 = Instance.new("ImageLabel")
    local FH = Instance.new("ScrollingFrame")
    local ImageLabel_2 = Instance.new("ImageLabel")
    local Title_2 = Instance.new("TextLabel")
    local UICorner_18 = Instance.new("UICorner")

    --Properties:

    DarkParadaxUI.Name = "Dark Paradax UI"
    if syn then
        syn.protect_gui(DarkParadaxUI)
    end
    DarkParadaxUI.Parent = game.CoreGui
    DarkParadaxUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    DarkParadaxUI.ResetOnSpawn = false

    Login.Name = "Login"
    Login.Parent = DarkParadaxUI
    Login.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Login.Position = UDim2.new(0.351979882, 0, 0.312267661, 0)
    Login.Size = UDim2.new(0, 470, 0, 303)
    Login.Visible = false

    UICorner.Parent = Login

    Key.Name = "Key"
    Key.Parent = Login
    Key.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
    Key.Position = UDim2.new(0.0191489365, 0, 0.577557802, 0)
    Key.Size = UDim2.new(0, 210, 0, 31)

    TextBox.Parent = Key
    TextBox.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
    TextBox.Position = UDim2.new(0.0386500768, 0, -0.00100806449, 0)
    TextBox.Size = UDim2.new(0, 191, 0, 31)
    TextBox.Font = Enum.Font.SourceSans
    TextBox.PlaceholderText = "Key"
    TextBox.Text = ""
    TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextBox.TextSize = 14.000
    TextBox.TextXAlignment = Enum.TextXAlignment.Left

    UICorner_2.Parent = TextBox

    UICorner_3.Parent = Key

    UUID.Name = "UUID"
    UUID.Parent = Login
    UUID.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
    UUID.Position = UDim2.new(0.534042537, 0, 0.574257493, 0)
    UUID.Size = UDim2.new(0, 210, 0, 31)

    TextBox_2.Parent = UUID
    TextBox_2.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
    TextBox_2.Position = UDim2.new(0.0386500768, 0, -0.00100806449, 0)
    TextBox_2.Size = UDim2.new(0, 191, 0, 31)
    TextBox_2.Font = Enum.Font.SourceSans
    TextBox_2.PlaceholderText = "UUID"
    TextBox_2.Text = ""
    TextBox_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextBox_2.TextSize = 14.000
    TextBox_2.TextXAlignment = Enum.TextXAlignment.Left

    UICorner_4.Parent = TextBox_2

    UICorner_5.Parent = UUID

    Title.Name = "Title"
    Title.Parent = Login
    Title.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
    Title.Size = UDim2.new(0, 470, 0, 23)
    Title.Font = Enum.Font.SourceSansLight
    Title.Text = "Paradax-Technologies Key Page"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 14.000
    Title.TextWrapped = true

    UICorner_6.Parent = Title

    ImageLabel.Parent = Login
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.Position = UDim2.new(0.351063818, 0, 0.102310233, 0)
    ImageLabel.Size = UDim2.new(0, 139, 0, 113)
    ImageLabel.Image = "http://www.roblox.com/asset/?id=8918328933"
    ImageLabel.ScaleType = Enum.ScaleType.Crop

    confirm.Name = "confirm"
    confirm.Parent = Login
    confirm.BackgroundColor3 = Color3.fromRGB(0, 162, 46)
    confirm.Position = UDim2.new(0.22978723, 0, 0.818481863, 0)
    confirm.Size = UDim2.new(0, 253, 0, 25)
    confirm.Font = Enum.Font.SourceSansLight
    confirm.Text = "Login"
    confirm.TextColor3 = Color3.fromRGB(255, 255, 255)
    confirm.TextScaled = true
    confirm.TextSize = 14.000
    confirm.TextWrapped = true

    UICorner_7.Parent = confirm

    discord.Name = "discord"
    discord.Parent = Login
    discord.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
    discord.Position = UDim2.new(0.295744687, 0, 0.716171622, 0)
    discord.Size = UDim2.new(0, 192, 0, 19)
    discord.Font = Enum.Font.SourceSansLight
    discord.Text = "Get Key"
    discord.TextColor3 = Color3.fromRGB(255, 255, 255)
    discord.TextScaled = true
    discord.TextSize = 14.000
    discord.TextWrapped = true

    UICorner_8.Parent = discord

    display.Name = "display"
    display.Parent = Login
    display.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
    display.Position = UDim2.new(0.0364181176, 0, 0.495049506, 0)
    display.Size = UDim2.new(0, 423, 0, 16)

    Status.Name = "Status"
    Status.Parent = display
    Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Status.BackgroundTransparency = 1.000
    Status.Position = UDim2.new(0.0141843967, 0, 0.0829200745, 0)
    Status.Size = UDim2.new(0, 422, 0, 14)
    Status.Font = Enum.Font.GothamBold
    Status.Text = "use /paradaxkey in #get-paradax-key in Mstir's Lair"
    Status.TextColor3 = Color3.fromRGB(255, 255, 255)
    Status.TextScaled = true
    Status.TextSize = 14.000
    Status.TextWrapped = true

    Main.Name = "Main"
    Main.Parent = DarkParadaxUI
    Main.Active = true
    Main.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
    Main.BackgroundTransparency = 0.990
    Main.Position = UDim2.new(0.301372111, 0, 0.26983887, 0)
    Main.Size = UDim2.new(0, 590, 0, 23)
    Main.Visible = false
    Main.ZIndex = 5

    TopTab.Name = "TopTab"
    TopTab.Parent = Main
    TopTab.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    TopTab.Size = UDim2.new(0, 591, 0, 23)
    TopTab.ZIndex = 2

    GameTitle.Name = "GameTitle"
    GameTitle.Parent = TopTab
    GameTitle.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
    GameTitle.BackgroundTransparency = 1.000
    GameTitle.Size = UDim2.new(0, 591, 0, 23)
    GameTitle.Font = Enum.Font.SourceSansLight
    GameTitle.Text = uiName
    GameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    GameTitle.TextScaled = true
    GameTitle.TextSize = 14.000
    GameTitle.TextWrapped = true

    UICorner_9.Parent = GameTitle

    Toggle.Name = "Toggle"
    Toggle.Parent = TopTab
    Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.BackgroundTransparency = 1.000
    Toggle.Position = UDim2.new(0.938297927, 0, 0, 0)
    Toggle.Size = UDim2.new(0, 21, 0, 23)
    Toggle.Font = Enum.Font.SourceSans
    Toggle.Text = "▼"
    Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.TextSize = 14.000

    UICorner_10.Parent = TopTab

    Box.Name = "Box"
    Box.Parent = Main
    Box.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Box.ClipsDescendants = true
    Box.Size = UDim2.new(0, 591, 0, 351)

    UICorner_11.Parent = Box

    SP.Name = "SP"
    SP.Parent = Box
    SP.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
    SP.Size = UDim2.new(0, 178, 0, 351)

    UICorner_12.Parent = SP

    butList.Name = "butList"
    butList.Parent = SP
    butList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    butList.BackgroundTransparency = 1.000
    butList.Position = UDim2.new(0.191011235, 0, 0.168091252, 0)
    butList.Size = UDim2.new(0, 109, 0, 263)

    UIListLayout.Parent = butList
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 10)

    settingF.Name = "settingF"
    settingF.Parent = SP
    settingF.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
    settingF.ClipsDescendants = true
    settingF.Size = UDim2.new(0, 0, 0, 350)

    UICorner_13.Parent = settingF

    settinglist.Name = "setting list"
    settinglist.Parent = settingF
    settinglist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    settinglist.BackgroundTransparency = 1.000
    settinglist.Position = UDim2.new(0.0505617969, 0, 0.168091342, 0)
    settinglist.Size = UDim2.new(0, 159, 0, 263)

    UIListLayout_2.Parent = settinglist
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 10)

    destroy.Name = "destroy"
    destroy.Parent = settinglist
    destroy.BackgroundColor3 = Color3.fromRGB(74, 75, 75)
    destroy.LayoutOrder = 1
    destroy.Size = UDim2.new(1, 0, 0.133794382, 0)

    UICorner_14.CornerRadius = UDim.new(0, 50)
    UICorner_14.Parent = destroy

    Button.Name = "Button"
    Button.Parent = destroy
    Button.BackgroundColor3 = Color3.fromRGB(74, 75, 75)
    Button.Position = UDim2.new(0.0367224365, 0, 0, 0)
    Button.Size = UDim2.new(0, 152, 0, 35)
    Button.Font = Enum.Font.SourceSansLight
    Button.Text = "Destroy Gui"
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextSize = 28.000
    Button.TextWrapped = true
    Button.TextXAlignment = Enum.TextXAlignment.Left

    UICorner_15.CornerRadius = UDim.new(0, 50)
    UICorner_15.Parent = Button

    HideGui.Name = "HideGui"
    HideGui.Parent = settinglist
    HideGui.BackgroundColor3 = Color3.fromRGB(74, 75, 75)
    HideGui.LayoutOrder = 1
    HideGui.Size = UDim2.new(1, 0, 0.133794382, 0)

    UICorner_16.CornerRadius = UDim.new(0, 50)
    UICorner_16.Parent = HideGui

    BindButton.Name = "BindButton"
    BindButton.Parent = HideGui
    BindButton.Active = false
    BindButton.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
    BindButton.Position = UDim2.new(0.567644238, 0, 0.101315841, 0)
    BindButton.Size = UDim2.new(0.390341908, 0, 0.839160442, 0)
    BindButton.ZIndex = 5
    BindButton.Font = Enum.Font.SourceSans
    BindButton.Text = "RightAlt"
    BindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    BindButton.TextScaled = true
    BindButton.TextWrapped = true

    UICorner_17.CornerRadius = UDim.new(0, 12)
    UICorner_17.Parent = BindButton

    Label.Name = "Label"
    Label.Parent = HideGui
    Label.Active = true
    Label.BackgroundColor3 = Color3.fromRGB(132, 132, 132)
    Label.BackgroundTransparency = 1.000
    Label.Position = UDim2.new(0.0367224477, 0, 0.101316229, 0)
    Label.Selectable = true
    Label.Size = UDim2.new(0.618971825, 0, 0.789172828, 0)
    Label.ZIndex = 2
    Label.Font = Enum.Font.SourceSansLight
    Label.Text = "Hide Gui:"
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextScaled = true
    Label.TextSize = 20.000
    Label.TextWrapped = true
    Label.TextXAlignment = Enum.TextXAlignment.Left

    DiscName.Name = "DiscName"
    DiscName.Parent = SP
    DiscName.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    DiscName.BackgroundTransparency = 0.990
    DiscName.BorderSizePixel = 0
    DiscName.Position = UDim2.new(0.0505617969, 0, 0.0826210827, 0)
    DiscName.Size = UDim2.new(0, 150, 0, 23)
    DiscName.Font = Enum.Font.Oswald
    DiscName.Text = "Welcome, discname."
    DiscName.TextColor3 = Color3.fromRGB(255, 255, 255)
    DiscName.TextScaled = true
    DiscName.TextSize = 14.000
    DiscName.TextWrapped = true
    DiscName.TextXAlignment = Enum.TextXAlignment.Left

    ParadaxLogo.Name = "ParadaxLogo"
    ParadaxLogo.Parent = SP
    ParadaxLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ParadaxLogo.BackgroundTransparency = 1.000
    ParadaxLogo.Position = UDim2.new(2.520509, 0, 0.431911707, 0)
    ParadaxLogo.Size = UDim2.new(0, 172, 0, 209)
    ParadaxLogo.Image = "http://www.roblox.com/asset/?id=8855477018"
    ParadaxLogo.ImageColor3 = Color3.fromRGB(217, 217, 217)
    ParadaxLogo.ImageTransparency = 0.800
    ParadaxLogo.SliceScale = 2.000

    setting.Name = "setting"
    setting.Parent = SP
    setting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    setting.BackgroundTransparency = 1.000
    setting.Position = UDim2.new(0, 0, 0.920208216, 0)
    setting.Size = UDim2.new(0, 28, 0, 28)
    setting.Image = "http://www.roblox.com/asset/?id=6543805891"

    ParadaxLogo_2.Name = "ParadaxLogo"
    ParadaxLogo_2.Parent = SP
    ParadaxLogo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ParadaxLogo_2.BackgroundTransparency = 1.000
    ParadaxLogo_2.Position = UDim2.new(0.799300969, 0, 0.0655270666, 0)
    ParadaxLogo_2.Size = UDim2.new(0, 32, 0, 40)
    ParadaxLogo_2.Image = "http://www.roblox.com/asset/?id=8855477018"
    ParadaxLogo_2.ImageColor3 = Color3.fromRGB(217, 217, 217)
    ParadaxLogo_2.ImageTransparency = 0.800
    ParadaxLogo_2.SliceScale = 2.000

    FH.Name = "FH"
    FH.Parent = Box
    FH.Active = true
    FH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FH.BackgroundTransparency = 1.000
    FH.BorderColor3 = Color3.fromRGB(255, 255, 255)
    FH.Position = UDim2.new(0.314720809, 0, 0.105413109, 0)
    FH.Size = UDim2.new(0, 396, 0, 312)
    FH.AutomaticCanvasSize = "Y"

    ImageLabel_2.Parent = DarkParadaxUI
    ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_2.BackgroundTransparency = 1.000
    ImageLabel_2.Position = UDim2.new(0.331, 0, -1, 0)
    ImageLabel_2.Size = UDim2.new(0, 429, 0, 351)
    ImageLabel_2.Image = "http://www.roblox.com/asset/?id=8918328933"
    ImageLabel_2.ScaleType = Enum.ScaleType.Crop

    Title_2.Name = "Title"
    Title_2.Parent = ImageLabel_2
    Title_2.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
    Title_2.BackgroundTransparency = 1.000
    Title_2.Position = UDim2.new(0.0396270454, 0, 0.0199430175, 0)
    Title_2.Size = UDim2.new(0, 396, 0, 58)
    Title_2.Font = Enum.Font.SourceSansLight
    Title_2.Text = "Loading..."
    Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title_2.TextScaled = true
    Title_2.TextSize = 14.000
    Title_2.TextTransparency = 1.000
    Title_2.TextWrapped = true

    UICorner_18.Parent = Title_2

    -- Scripts:

    local function UAXFCB_fake_script() -- discord.LocalScript
        local script = Instance.new("LocalScript", discord)

        script.Parent.MouseButton1Click:Connect(
            function()
                function join()
                    local http_request = http_request or syn.request
                    http_request(
                        {
                            Url = "http://127.0.0.1:6463/rpc?v=1",
                            Method = "POST",
                            Headers = {
                                ["Content-Type"] = "application/json",
                                ["origin"] = "https://discord.com"
                            },
                            Body = game:GetService("HttpService"):JSONEncode(
                                {
                                    ["args"] = {
                                        ["code"] = "nsaHFxsA5q"
                                    },
                                    ["cmd"] = "INVITE_BROWSER",
                                    ["nonce"] = "."
                                }
                            )
                        }
                    )
                end
                setclipboard("https://discord.gg/3kV6cq3hJU")
                join()
                Status.Text = "Discord Server copied to clipboard and prompted!"
            end
        )
    end
    coroutine.wrap(UAXFCB_fake_script)()
    local function BRTLZG_fake_script() -- Login.LocalScript
        local script = Instance.new("LocalScript", Login)

        local UUIDbox = script.Parent.UUID.TextBox
        local Keybox = script.Parent.Key.TextBox
        local verifyButton = script.Parent.confirm
        local StatusTxt = script.Parent.display.Status
        local gameName = script.Parent.Parent.Main.TopTab.GameTitle
        local DiscoName = script.Parent.Parent.Main.Box.SP.DiscName

        verifyButton.MouseButton1Click:Connect(
            function()
                StatusTxt.Text = "Validating Response..."
                wait(1)
                if Keybox.Text ~= "" and UUIDbox.Text ~= "" or isfile("Paradax-Technologies/AutoLogin.paradaxTech") then
                    local key = Keybox.Text
                    local uuid = UUIDbox.Text

                    if isfile("Paradax-Technologies/AutoLogin.paradaxTech") and Keybox.Text == "" and UUIDbox.Text == "" then
                        StatusTxt.Text = "Inserting your info from last session"
                        local file = readfile("Paradax-Technologies/AutoLogin.paradaxTech")
                        local idealstring
                        if syn then
                            local encString = syn.crypt.decrypt(file, "mstirBotonTop!")
                            idealstring = encString
                        else
                            idealstring = file
                        end
                        local sepvals = idealstring:split("|")
                        local ALkey = sepvals[1]:split(":")
                        local ALuuid = sepvals[2]:split(":")

                        key = ALkey[2]
                        uuid = ALuuid[2]
                        Keybox.Text = ALkey[2]
                        UUIDbox.Text = ALuuid[2]

                        wait(1)
                    end
                    StatusTxt.Text = "Checking with Database..."
                    wait(1)

                    local http_request = http_request or syn.request
                    local body = http_request({Url = "https://httpbin.org/get", Method = "GET"}).Body
                    local decoded = game:GetService("HttpService"):JSONDecode(body)
                    local hwid_list = {"Syn-Fingerprint", "Krnl-Fingerprint"}
                    local hwid = ""

                    for i, v in next, hwid_list do
                        if decoded.headers[v] then
                            hwid = decoded.headers[v]
                            break
                        end
                    end

                    local data = {
                        ["hwid"] = hwid,
                        ["key"] = key,
                        ["uuid"] = uuid,
                        ["rbname"] = game.Players.LocalPlayer.Name,
                        ["rbuuid"] = game.Players.LocalPlayer.UserId,
                        ["gameid"] = game.PlaceId
                    }

                    local response =
                        http_request(
                        {
                            Url = "https://paradax-technologies.deta.dev",
                            Method = "POST",
                            Headers = {
                                ["Content-Type"] = "application/json",
                                ["User-Agent"] = "paradax-systems.roblox",
                                ["Cookie"] = "mstirbotXparadax Owo",
                                ["paradax-systems-verification"] = key
                            },
                            Body = game:GetService("HttpService"):JSONEncode(data)
                        }
                    )

                    local info = response.Body:split(" ")

                    if info[1] == "fGu#^pA|wT@M.xBgj!PH7!%o)EtBvV6_NmRXsp%HXKi_ejdNo+" then
                        DiscoName.Text = "Welcome, " .. info[2] .. "."
                        if isfile("Paradax-Technologies/AutoLogin.paradaxTech") == false then
                            StatusTxt.Text = "Saving your login credentials for auto login please wait"
                            local stringNew = "Key:" .. key .. "| UUID:" .. uuid
                            if syn then
                                local encString = syn.crypt.encrypt(stringNew, "mstirBotonTop!")
                                stringNew = encString
                            end
                            writefile("Paradax-Technologies/AutoLogin.paradaxTech", stringNew)
                            wait(1)
                            StatusTxt.Text = "Credentials Saved. Next time only click verify"
                            wait(1.5)
                        end
                        StatusTxt.Text = "Greetings " .. DiscoName.Text .. ", Preparing Paradax UI"
                        wait(2)
                        script.Parent.Parent.Main.Visible = true
                        wait()
                        script.Parent:Destroy()
                    elseif info[2] == "expired" or response.Body == "no http spy!" then
                        if isfile("Paradax-Technologies/AutoLogin.paradaxTech") then
                            delfile("Paradax-Technologies/AutoLogin.paradaxTech")
                        end
                        StatusTxt.Text = "Your key seems to be expired. Please go generate new key."
                    else
                        StatusTxt.Text = "Error: Check Key and UUID for spaces. If issue persists DM m1ke"
                    end
                else
                    StatusTxt.Text = "Error: Cannot leave text box blank"
                end
            end
        )
    end
    coroutine.wrap(BRTLZG_fake_script)()
    local function SBQPOJI_fake_script() -- Main.BaseCrap
        local script = Instance.new("LocalScript", Main)

        script.Parent.Draggable = true
        if isfile("Paradax-Technologies/Settings.paradaxTech") then
            delfile("Paradax-Technologies/Settings.paradaxTech")
        end

        local a = false
        local b = false
        local c = script.Parent.Box
        local d = UDim2.new(0, 591, 0, 23)
        local e = UDim2.new(0, 591, 0, 351)

        local function f(g, h)
            g:TweenSize(h, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2, false)
            wait(0.2)
        end

        script.Parent.TopTab.Toggle.MouseButton1Click:Connect(
            function()
                if a == false and not b then
                    b = true
                    a = true

                    f(c, d)
                    b = false
                elseif a == true and not b then
                    b = true
                    a = false

                    f(c, e)
                    b = false
                end
            end
        )
    end
    coroutine.wrap(SBQPOJI_fake_script)()
    local function VLZATA_fake_script() -- Button.LocalScript
        local script = Instance.new("LocalScript", Button)

        script.Parent.MouseButton1Click:Connect(
            function()
                script.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:Destroy()
            end
        )
    end
    coroutine.wrap(VLZATA_fake_script)()
    local function RLMCC_fake_script() -- HideGui.LocalScript
        local script = Instance.new("LocalScript", HideGui)

        local WhitelistedType = {
            [Enum.UserInputType.MouseButton1] = "Mouse1",
            [Enum.UserInputType.MouseButton2] = "Mouse2",
            [Enum.UserInputType.MouseButton3] = "Mouse3"
        }
        local UIS = game:GetService("UserInputService")
        local Bind = Enum.KeyCode.RightAlt
        local Binding = false

        script.Parent.BindButton.MouseButton1Click:Connect(
            function()
                local Connection
                Binding = true

                script.Parent.BindButton.Text = ". . ."

                Connection =
                    UIS.InputBegan:Connect(
                    function(i)
                        if WhitelistedType[i.UserInputType] then
                            script.Parent.BindButton.Text = WhitelistedType[i.UserInputType]
                            Bind = i.UserInputType
                        elseif i.KeyCode ~= Enum.KeyCode.Unknown then
                            script.Parent.BindButton.Text = tostring(i.KeyCode):gsub("Enum.KeyCode.", "")
                            Bind = i.KeyCode
                        else
                            warn("Exception: " .. i.UserInputType .. " " .. i.KeyCode)
                        end

                        Connection:Disconnect()
                    end
                )
            end
        )

        UIS.InputBegan:Connect(
            function(i)
                if Binding == true then
                    Binding = false
                    return
                end

                if (Bind == i.UserInputType or Bind == i.KeyCode) then
                    if script.Parent.Parent.Parent.Parent.Parent.Parent.Visible == false then
                        script.Parent.Parent.Parent.Parent.Parent.Parent.Visible = true
                    else
                        script.Parent.Parent.Parent.Parent.Parent.Parent.Visible = false
                    end
                end
            end
        )
    end
    coroutine.wrap(RLMCC_fake_script)()
    local function EDVD_fake_script() -- setting.toggleSet
        local script = Instance.new("LocalScript", setting)

        local a = true
        local b = false
        local c = script.Parent.Parent.settingF
        local d = UDim2.new(0, 0, 0, 350)
        local e = UDim2.new(0, 178, 0, 350)

        local function f(g, h)
            g:TweenSize(h, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2, false)
            wait(0.2)
        end

        script.Parent.MouseButton1Click:Connect(
            function()
                if a == false and not b then
                    b = true
                    a = true

                    f(c, d)
                    b = false
                elseif a == true and not b then
                    b = true
                    a = false

                    f(c, e)
                    b = false
                end
            end
        )
    end
    coroutine.wrap(EDVD_fake_script)()
    local function FHCW_fake_script() -- ImageLabel_2.LocalScript
        local script = Instance.new("LocalScript", ImageLabel_2)

        wait(0.5)
        script.Parent:TweenPosition(
            UDim2.new(0.33, 0, 0.269, 0),
            Enum.EasingDirection.InOut,
            Enum.EasingStyle.Sine,
            0.2,
            false
        )
        wait(1.2)
        game:GetService("TweenService"):Create(
            script.Parent.Title,
            TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
            {
                TextTransparency = 0
            }
        ):Play()
        wait(2.5)
        script.Parent.Parent.Login.Visible = true
        wait()
        script.Parent:Destroy()
    end
    coroutine.wrap(FHCW_fake_script)()

    local MainLib = {}

    function MainLib:CreateTabs(table)
        local tabs = table

        for name, val in pairs(tabs) do
            local Newtab = Instance.new("TextButton")
            local selector = Instance.new("Frame")

            --Properties:

            Newtab.Name = string.lower(name)
            Newtab.Parent = butList
            Newtab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Newtab.BackgroundTransparency = 0.990
            Newtab.BorderSizePixel = 0
            Newtab.Size = UDim2.new(0, 109, 0, 26)
            Newtab.Font = Enum.Font.Sarpanch
            Newtab.Text = string.upper(name)
            Newtab.TextColor3 = Color3.fromRGB(255, 255, 255)
            Newtab.TextScaled = true
            Newtab.TextSize = 14.000
            Newtab.TextWrapped = true

            selector.Name = "selector"
            selector.Parent = Newtab
            selector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            if val == true then
                selector.BackgroundTransparency = 0
            else
                selector.BackgroundTransparency = 1
            end
            selector.BorderColor3 = Color3.fromRGB(255, 255, 255)
            selector.Position = UDim2.new(0.211009175, 0, 1, 0)
            selector.Size = UDim2.new(0, 63, 0, 0)

            local NewTabF = Instance.new("Frame")
            local UIListLayout = Instance.new("UIListLayout")

            --Properties:

            NewTabF.Name = string.lower(name)
            NewTabF.Parent = FH
            NewTabF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NewTabF.BackgroundTransparency = 1.000
            NewTabF.ClipsDescendants = true
            NewTabF.Position = UDim2.new(0, 0, 0.00319476007, 0)
            NewTabF.AutomaticSize = "Y"
            if val == true then
                NewTabF.Size = UDim2.new(0, 383, 0, 700)
            else
                NewTabF.Size = UDim2.new(0, 383, 0, 0)
                NewTabF.Visible = false
            end

            UIListLayout.Parent = NewTabF
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 10)
        end

        local debounce = false
        local frameFolder = FH
        local RegSize = UDim2.new(0, 383, 0, 700)
        local ClosedSize = UDim2.new(0, 383, 0, 0)
        local animTime = 0.4
        local waitTime = 0.2
        local hover = false

        local function GetOn()
            for name, bool in pairs(tabs) do
                if bool == true then
                    return name
                end
            end
        end

        local function ProTabs(tabname)
            local this = tabname

            if tabs[this] == true then
                return
            end
            if not debounce then
                debounce = true
                local CurrentOn = GetOn()

                tabs[CurrentOn] = false
                tabs[this] = true

                if tabs[CurrentOn] ~= this then
                    for i, v in pairs(butList[CurrentOn]:GetChildren()) do
                        game:GetService("TweenService"):Create(
                            v,
                            TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                            {
                                BackgroundTransparency = 1
                            }
                        ):Play()
                    end
                end

                for i, v in pairs(butList[this]:GetChildren()) do
                    game:GetService("TweenService"):Create(
                        v,
                        TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                        {
                            BackgroundTransparency = 0
                        }
                    ):Play()
                end
                wait()
                frameFolder[CurrentOn]:TweenSize(
                    ClosedSize,
                    Enum.EasingDirection.InOut,
                    Enum.EasingStyle.Sine,
                    animTime,
                    false
                )
                if tabs[CurrentOn] ~= this then
                    for i, v in pairs(frameFolder[CurrentOn]:GetChildren()) do
                        if v:IsA("UIListLayout") == false then
                            v.Visible = true
                        end
                    end
                end
                wait(waitTime)
                frameFolder[CurrentOn].Visible = false
                frameFolder[this].Visible = true
                frameFolder[this]:TweenSize(RegSize, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, animTime, false)
                for i, v in pairs(frameFolder[this]:GetChildren()) do
                    if v:IsA("UIListLayout") == false then
                        v.Visible = true
                    end
                end
                wait(waitTime)

                debounce = false
            end
        end

        for i, v in pairs(butList:GetChildren()) do
            if v:IsA("TextButton") then
                v.MouseEnter:Connect(
                    function()
                        local this = v.Name

                        if hover == false then
                            hover = true
                            if not tabs[GetOn()] then
                                return
                            end

                            game:GetService("TweenService"):Create(
                                butList[GetOn()].selector,
                                TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                                {
                                    BackgroundTransparency = 0.7
                                }
                            ):Play()

                            game:GetService("TweenService"):Create(
                                butList[this].selector,
                                TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                                {
                                    BackgroundTransparency = 0.2
                                }
                            ):Play()
                        else
                            return
                        end
                    end
                )

                v.MouseLeave:Connect(
                    function()
                        local this = v.Name

                        if hover == true then
                            hover = false
                            if not tabs[GetOn()] then
                                return
                            end
                            game:GetService("TweenService"):Create(
                                butList[this].selector,
                                TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                                {
                                    BackgroundTransparency = 1
                                }
                            ):Play()

                            game:GetService("TweenService"):Create(
                                butList[GetOn()].selector,
                                TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                                {
                                    BackgroundTransparency = 0
                                }
                            ):Play()
                        else
                            return
                        end
                    end
                )
            end
        end

        for i, v in pairs(butList:GetChildren()) do
            if v:IsA("TextButton") then
                v.MouseButton1Click:Connect(
                    function()
                        ProTabs(v.Name)
                    end
                )
            end
        end
    end

    function MainLib:Section(name, tab)
        local TabParent = FH:FindFirstChild(tab)

        local Section = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local SectionTitle = Instance.new("TextLabel")
        local Frame = Instance.new("Frame")
        local SecFH = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")

        --Properties:

        Section.Name = "Section"
        Section.Parent = TabParent
        Section.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        Section.Size = UDim2.new(0, 383, 0, 183)

        UICorner.CornerRadius = UDim.new(0, 12)
        UICorner.Parent = Section

        SectionTitle.Name = "SectionTitle"
        SectionTitle.Parent = Section
        SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SectionTitle.BackgroundTransparency = 1.000
        SectionTitle.Position = UDim2.new(0.0208877288, 0, 0, 0)
        SectionTitle.Size = UDim2.new(0, 360, 0, 21)
        SectionTitle.Font = Enum.Font.SourceSansLight
        SectionTitle.Text = name
        SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        SectionTitle.TextScaled = true
        SectionTitle.TextSize = 14.000
        SectionTitle.TextWrapped = true
        SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

        Frame.Parent = SectionTitle
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
        Frame.Position = UDim2.new(0, 0, 1.14285719, 0)
        Frame.Size = UDim2.new(0, 142, 0, 0)

        SecFH.Name = "SecFH"
        SecFH.Parent = Section
        SecFH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SecFH.BackgroundTransparency = 1.000
        SecFH.Position = UDim2.new(0.0209999997, 0, 0.170000002, 0)
        SecFH.Size = UDim2.new(0, 367, 0, 156)

        UIListLayout.Parent = SecFH
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)

        return SecFH
    end

    function MainLib:Button(config)
        local callback = config.callback or function()
            end
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        if TabParent == nil then
            warn("Paradax UI Lib: tab or section specified not found")
            return
        end

        local Button = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Button_2 = Instance.new("TextButton")
        local UICorner_2 = Instance.new("UICorner")

        --Properties:

        Button.Name = "Button"
        Button.Parent = TabParent
        Button.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        Button.LayoutOrder = 1
        Button.Position = UDim2.new(0, 0, 0.246456251, 0)
        if Button.Parent.Parent ~= FH then
            Button.Size = UDim2.new(1, 0, 0.212415278, 0)
        else
            Button.Size = UDim2.new(1, 0, 0.045, 0)
        end

        UICorner.CornerRadius = UDim.new(0, 50)
        UICorner.Parent = Button

        Button_2.Name = "Button"
        Button_2.Parent = Button
        Button_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        Button_2.Position = UDim2.new(0.0367224403, 0, 0, 0)
        if Button_2.Parent.Parent ~= FH then
            Button_2.Size = UDim2.new(0, 343, 0, 32)
        else
            Button_2.Size = UDim2.new(0, 368, 0, 31)
        end
        Button_2.Font = Enum.Font.SourceSansLight
        Button_2.Text = config.name
        Button_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button_2.TextSize = 28.000
        Button_2.TextWrapped = true
        Button_2.TextXAlignment = Enum.TextXAlignment.Left

        UICorner_2.CornerRadius = UDim.new(0, 50)
        UICorner_2.Parent = Button_2

        Button_2.MouseButton1Click:Connect(
            function()
                pcall(callback)
            end
        )
    end

    function MainLib:Toggle(config)
        local callback = config.callback or function()
            end
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        if TabParent == nil then
            warn("Paradax UI Lib: tab or section specified not found")
            return
        end

        local Toggle = Instance.new("Frame")
        local ToggleNotif = Instance.new("TextButton")
        local UICorner = Instance.new("UICorner")
        local Frame = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local UICorner_3 = Instance.new("UICorner")
        local Label = Instance.new("TextLabel")

        --Properties:

        Toggle.Name = "Toggle"
        Toggle.Parent = TabParent
        Toggle.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        Toggle.LayoutOrder = 1
        Toggle.Size = UDim2.new(1, 0, 0.212415278, 0)

        ToggleNotif.Name = "ToggleNotif"
        ToggleNotif.Parent = Toggle
        ToggleNotif.Active = false
        ToggleNotif.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
        ToggleNotif.Position = UDim2.new(0.72167927, 0, 0.18280156, 0)
        ToggleNotif.Size = UDim2.new(0.236306876, 0, 0.634187579, 0)
        ToggleNotif.ZIndex = 5
        ToggleNotif.Text = ""
        ToggleNotif.TextTransparency = 1.000

        UICorner.CornerRadius = UDim.new(0, 50)
        UICorner.Parent = ToggleNotif

        Frame.Parent = ToggleNotif
        Frame.BackgroundColor3 = Color3.fromRGB(223, 215, 227)
        Frame.LayoutOrder = 4
        Frame.Position = UDim2.new(0.0480000004, 0, 0.0829999968, 0)
        Frame.Size = UDim2.new(0.432000011, 0, 0.850000024, 0)
        Frame.ZIndex = 5

        UICorner_2.CornerRadius = UDim.new(0, 50)
        UICorner_2.Parent = Frame

        UICorner_3.CornerRadius = UDim.new(0, 50)
        UICorner_3.Parent = Toggle

        Label.Name = "Label"
        Label.Parent = Toggle
        Label.Active = true
        Label.BackgroundColor3 = Color3.fromRGB(132, 132, 132)
        Label.BackgroundTransparency = 1.000
        Label.Position = UDim2.new(0.0339977443, 0, -0.017731078, 0)
        Label.Selectable = true
        Label.Size = UDim2.new(0.618971825, 0, 0.898683667, 0)
        Label.ZIndex = 2
        Label.Font = Enum.Font.SourceSansLight
        Label.Text = config.name
        Label.TextColor3 = Color3.fromRGB(255, 255, 255)
        Label.TextScaled = true
        Label.TextSize = 20.000
        Label.TextWrapped = true
        Label.TextXAlignment = Enum.TextXAlignment.Left

        -- Scripts:

        local function FBTEHWI_fake_script() -- Toggle.LocalScript
            local script = Instance.new("LocalScript", Toggle)

            local toggle = false

            script.Parent.ToggleNotif.MouseButton1Click:Connect(
                function()
                    local TweenService = game:GetService("TweenService")

                    if toggle ~= false then
                        if toggle == true then
                            toggle = false
                            script.Parent.ToggleNotif.Frame:TweenPosition(
                                UDim2.new(0.048, 0, 0.083, 0),
                                Enum.EasingDirection.InOut,
                                Enum.EasingStyle.Sine,
                                0.2,
                                true
                            )
                            TweenService:Create(
                                script.Parent.ToggleNotif.Frame,
                                TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                                {
                                    BackgroundColor3 = Color3.fromRGB(223, 215, 227)
                                }
                            ):Play()
                            --false
                            pcall(callback, toggle)
                        end
                        return
                    end
                    toggle = true
                    script.Parent.ToggleNotif.Frame:TweenPosition(
                        UDim2.new(0.53, 0, 0.083, 0),
                        Enum.EasingDirection.InOut,
                        Enum.EasingStyle.Sine,
                        0.2,
                        true
                    )
                    TweenService:Create(
                        script.Parent.ToggleNotif.Frame,
                        TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                        {
                            BackgroundColor3 = Color3.fromRGB(76, 230, 81)
                        }
                    ):Play()
                    --true
                    pcall(callback, toggle)
                end
            )
        end
        coroutine.wrap(FBTEHWI_fake_script)()
    end

    function MainLib:Slider(config)
        local callback = config.callback or function()
            end
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        if TabParent == nil then
            warn("Paradax UI Lib: tab or section specified not found")
            return
        end

        local Slider = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Label = Instance.new("TextLabel")
        local SliderBox = Instance.new("Frame")
        local SliderButton = Instance.new("TextButton")
        local UICorner_2 = Instance.new("UICorner")
        local SliderInner = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")
        local UICorner_4 = Instance.new("UICorner")
        local SlideVal = Instance.new("TextLabel")

        --Properties:

        Slider.Name = "Slider"
        Slider.Parent = TabParent
        Slider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        Slider.LayoutOrder = 1
        Slider.Position = UDim2.new(0, 0, 0.739368558, 0)
        Slider.Size = UDim2.new(1, 0, 0.212415278, 0)

        UICorner.CornerRadius = UDim.new(0, 50)
        UICorner.Parent = Slider

        Label.Name = "Label"
        Label.Parent = Slider
        Label.Active = true
        Label.BackgroundColor3 = Color3.fromRGB(132, 132, 132)
        Label.BackgroundTransparency = 1.000
        Label.Position = UDim2.new(0.0367225409, 0, -0.0177310742, 0)
        Label.Selectable = true
        Label.Size = UDim2.new(0.373740226, 0, 0.898683548, 0)
        Label.ZIndex = 2
        Label.Font = Enum.Font.SourceSansLight
        Label.Text = config.name
        Label.TextColor3 = Color3.fromRGB(255, 255, 255)
        Label.TextScaled = true
        Label.TextSize = 20.000
        Label.TextWrapped = true
        Label.TextXAlignment = Enum.TextXAlignment.Left

        SliderBox.Name = "SliderBox"
        SliderBox.Parent = Slider
        SliderBox.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
        SliderBox.BorderSizePixel = 0
        SliderBox.ClipsDescendants = true
        SliderBox.Position = UDim2.new(0.42408675, 0, 0.236265987, 0)
        SliderBox.Size = UDim2.new(0, 204, 0, 16)

        SliderButton.Name = "SliderButton"
        SliderButton.Parent = SliderBox
        SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderButton.BackgroundTransparency = 0.990
        SliderButton.Size = UDim2.new(0, 199, 0, 16)
        SliderButton.Font = Enum.Font.SourceSans
        SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        SliderButton.TextSize = 14.000
        SliderButton.TextTransparency = 1.000

        UICorner_2.Parent = SliderButton

        SliderInner.Name = "SliderInner"
        SliderInner.Parent = SliderBox
        SliderInner.BackgroundColor3 = Color3.fromRGB(19, 0, 168)
        SliderInner.BorderSizePixel = 0
        SliderInner.Size = UDim2.new(0, 0, 0, 15)

        UICorner_3.Parent = SliderInner

        UICorner_4.Parent = SliderBox

        SlideVal.Name = "SlideVal"
        SlideVal.Parent = Slider
        SlideVal.Active = true
        SlideVal.BackgroundColor3 = Color3.fromRGB(132, 132, 132)
        SlideVal.BackgroundTransparency = 1.000
        SlideVal.Position = UDim2.new(0.42408672, 0, 0.146980286, 0)
        SlideVal.Selectable = true
        SlideVal.Size = UDim2.new(0.532061338, 0, 0.644686937, 0)
        SlideVal.ZIndex = 2
        SlideVal.Font = Enum.Font.FredokaOne
        SlideVal.Text = "0"
        SlideVal.TextColor3 = Color3.fromRGB(255, 255, 255)
        SlideVal.TextScaled = true
        SlideVal.TextSize = 20.000
        SlideVal.TextWrapped = true

        -- Scripts:

        local function GLDT_fake_script() -- SliderBox.LocalScript
            local script = Instance.new("LocalScript", SliderBox)

            minvalue = config.min
            maxvalue = config.max
            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value
            local SB = script.Parent.SliderButton
            local SV = script.Parent.Parent.SlideVal
            local SF = script.Parent.SliderInner

            -----Main Code-----

            SB.MouseButton1Down:Connect(
                function()
                    Value =
                        math.floor(
                        (((tonumber(maxvalue) - tonumber(minvalue)) / 204) * SF.AbsoluteSize.X) + tonumber(minvalue)
                    ) or 0

                    pcall(
                        function()
                            callback(Value)
                        end
                    )

                    SF.Size = UDim2.new(0, math.clamp(mouse.X - SF.AbsolutePosition.X, 0, 204), 0, 16)
                    moveconnection =
                        mouse.Move:Connect(
                        function()
                            Value =
                                math.floor(
                                (((tonumber(maxvalue) - tonumber(minvalue)) / 204) * SF.AbsoluteSize.X) +
                                    tonumber(minvalue)
                            )
                            SV.Text = Value

                            pcall(
                                function()
                                    callback(Value)
                                end
                            )

                            SF.Size = UDim2.new(0, math.clamp(mouse.X - SF.AbsolutePosition.X, 0, 204), 0, 16)
                        end
                    )

                    releaseconnection =
                        uis.InputEnded:Connect(
                        function(Mouse)
                            if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                Value =
                                    math.floor(
                                    (((tonumber(maxvalue) - tonumber(minvalue)) / 204) * SF.AbsoluteSize.X) +
                                        tonumber(minvalue)
                                )

                                pcall(
                                    function()
                                        callback(Value)
                                    end
                                )

                                SF.Size = UDim2.new(0, math.clamp(mouse.X - SF.AbsolutePosition.X, 0, 204), 0, 16)
                                moveconnection:Disconnect()
                                releaseconnection:Disconnect()
                            end
                        end
                    )
                end
            )
        end
        coroutine.wrap(GLDT_fake_script)()
    end

    function MainLib:TextBox(config)
        local callback = config.callback or function()
            end
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        if TabParent == nil then
            warn("Paradax UI Lib: tab or section specified not found")
            return
        end

        local TextBox = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Box = Instance.new("TextBox")
        local UICorner_2 = Instance.new("UICorner")
        local Label = Instance.new("TextLabel")

        --Properties:

        TextBox.Name = "TextBox"
        TextBox.Parent = TabParent
        TextBox.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        TextBox.LayoutOrder = 1
        TextBox.Position = UDim2.new(0, 0, 0.221571788, 0)
        TextBox.Size = UDim2.new(1, 0, 0.211999997, 0)

        UICorner.CornerRadius = UDim.new(0, 50)
        UICorner.Parent = TextBox

        Box.Name = "Box"
        Box.Parent = TextBox
        Box.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
        Box.Position = UDim2.new(0.440435499, 0, 0.113180242, 0)
        Box.Size = UDim2.new(0, 193, 0, 23)
        Box.Font = Enum.Font.Arial
        Box.PlaceholderColor3 = Color3.fromRGB(56, 56, 56)
        Box.Text = ""
        Box.TextColor3 = Color3.fromRGB(255, 255, 255)
        Box.TextSize = 18.000
        Box.TextWrapped = true

        UICorner_2.Parent = Box

        Label.Name = "Label"
        Label.Parent = TextBox
        Label.Active = true
        Label.BackgroundColor3 = Color3.fromRGB(132, 132, 132)
        Label.BackgroundTransparency = 1.000
        Label.Position = UDim2.new(0.028548155, 0, -0.0474929772, 0)
        Label.Selectable = true
        Label.Size = UDim2.new(0.395538568, 0, 0.958205462, 0)
        Label.ZIndex = 2
        Label.Font = Enum.Font.SourceSansLight
        Label.Text = config.name
        Label.TextColor3 = Color3.fromRGB(255, 255, 255)
        Label.TextScaled = true
        Label.TextSize = 20.000
        Label.TextWrapped = true
        Label.TextXAlignment = Enum.TextXAlignment.Left

        -- Scripts:

        local function OSYFQH_fake_script() -- Box.LocalScript
            local script = Instance.new("LocalScript", Box)

            script.Parent.FocusLost:Connect(
                function(enter)
                    if enter == true then
                        local text = script.Parent.Text

                        pcall(callback, text)
                    end
                end
            )
        end
        coroutine.wrap(OSYFQH_fake_script)()
    end

    function MainLib:Bind(config)
        local callback = config.callback or function()
            end
        local Bindkey = config.key
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        if TabParent == nil then
            warn("Paradax UI Lib: tab or section specified not found")
            return
        end

        local Bind = Instance.new("Frame")
        local Label = Instance.new("TextLabel")
        local BindButton = Instance.new("TextButton")
        local UICorner = Instance.new("UICorner")
        local UICorner_2 = Instance.new("UICorner")

        --Properties:

        Bind.Name = "Bind"
        Bind.Parent = TabParent
        Bind.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        Bind.LayoutOrder = 1
        Bind.Position = UDim2.new(0, 0, 0.492912292, 0)
        Bind.Size = UDim2.new(1, 0, 0.212415278, 0)

        Label.Name = "Label"
        Label.Parent = Bind
        Label.Active = true
        Label.BackgroundColor3 = Color3.fromRGB(132, 132, 132)
        Label.BackgroundTransparency = 1.000
        Label.Position = UDim2.new(0.0367224477, 0, 0.101316229, 0)
        Label.Selectable = true
        Label.Size = UDim2.new(0.618971825, 0, 0.789172828, 0)
        Label.ZIndex = 2
        Label.Font = Enum.Font.SourceSansLight
        Label.Text = config.name
        Label.TextColor3 = Color3.fromRGB(255, 255, 255)
        Label.TextScaled = true
        Label.TextSize = 20.000
        Label.TextWrapped = true
        Label.TextXAlignment = Enum.TextXAlignment.Left

        BindButton.Name = "BindButton"
        BindButton.Parent = Bind
        BindButton.Active = false
        BindButton.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
        BindButton.Position = UDim2.new(0.655694544, 0, 0.041792728, 0)
        BindButton.Size = UDim2.new(0.302291662, 0, 0.89868319, 0)
        BindButton.ZIndex = 5
        BindButton.Font = Enum.Font.Arial
        BindButton.Text = tostring(Bindkey):split(".")[3]
        BindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        BindButton.TextScaled = true
        BindButton.TextWrapped = true

        UICorner.CornerRadius = UDim.new(0, 12)
        UICorner.Parent = BindButton

        UICorner_2.CornerRadius = UDim.new(0, 50)
        UICorner_2.Parent = Bind

        -- Scripts:

        local function QXANFEM_fake_script() -- Bind.LocalScript
            local script = Instance.new("LocalScript", Bind)

            local WhitelistedType = {
                [Enum.UserInputType.MouseButton1] = "Mouse1",
                [Enum.UserInputType.MouseButton2] = "Mouse2",
                [Enum.UserInputType.MouseButton3] = "Mouse3"
            }
            local UIS = game:GetService("UserInputService")
            local Bind = Enum.KeyCode.B
            local Binding = false

            script.Parent.BindButton.MouseButton1Click:Connect(
                function()
                    local Connection
                    Binding = true

                    script.Parent.BindButton.Text = ". . ."

                    Connection =
                        UIS.InputBegan:Connect(
                        function(i)
                            if WhitelistedType[i.UserInputType] then
                                script.Parent.BindButton.Text = WhitelistedType[i.UserInputType]
                                Bind = i.UserInputType
                            elseif i.KeyCode ~= Enum.KeyCode.Unknown then
                                script.Parent.BindButton.Text = tostring(i.KeyCode):gsub("Enum.KeyCode.", "")
                                Bind = i.KeyCode
                            else
                                warn("Exception: " .. i.UserInputType .. " " .. i.KeyCode)
                            end

                            Connection:Disconnect()
                        end
                    )
                end
            )

            UIS.InputBegan:Connect(
                function(i)
                    if Binding == true then
                        Binding = false
                        return
                    end

                    if (Bind == i.UserInputType or Bind == i.KeyCode) then
                        pcall(callback)
                    end
                end
            )
        end
        coroutine.wrap(QXANFEM_fake_script)()
    end

    function MainLib:Dropdown(config)
        local callback = config.callback or function()
            end
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        local optionsT = config.list
        if TabParent == nil then
            warn("Paradax UI Lib: tab or section specified not found")
            return
        end

        local DropDown = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Label = Instance.new("TextLabel")
        local DD = Instance.new("TextButton")
        local UICorner_2 = Instance.new("UICorner")
        local DropMenu = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")

        --Properties:

        DropDown.Name = "DropDown"
        DropDown.Parent = TabParent
        DropDown.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        DropDown.LayoutOrder = 1
        DropDown.Position = UDim2.new(0, 0, 0.221571788, 0)
        DropDown.Size = UDim2.new(1, 0, 0.211999997, 0)
        DropDown.ZIndex = 2

        UICorner.CornerRadius = UDim.new(0, 50)
        UICorner.Parent = DropDown

        Label.Name = "Label"
        Label.Parent = DropDown
        Label.Active = true
        Label.BackgroundColor3 = Color3.fromRGB(132, 132, 132)
        Label.BackgroundTransparency = 1.000
        Label.Position = UDim2.new(0.028548155, 0, -0.0474929772, 0)
        Label.Selectable = true
        Label.Size = UDim2.new(0.411887348, 0, 0.958205462, 0)
        Label.ZIndex = 2
        Label.Font = Enum.Font.SourceSansLight
        Label.Text = config.name
        Label.TextColor3 = Color3.fromRGB(255, 255, 255)
        Label.TextScaled = true
        Label.TextSize = 20.000
        Label.TextWrapped = true
        Label.TextXAlignment = Enum.TextXAlignment.Left

        DD.Name = "DD"
        DD.Parent = DropDown
        DD.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
        DD.Position = UDim2.new(0.475857854, 0, 0.163170025, 0)
        DD.Size = UDim2.new(0, 167, 0, 22)
        DD.ZIndex = 2
        DD.Font = Enum.Font.Arial
        DD.Text = ""
        DD.TextColor3 = Color3.fromRGB(255, 255, 255)
        DD.TextScaled = true
        DD.TextSize = 18.000
        DD.TextWrapped = true

        UICorner_2.Parent = DD

        DropMenu.Name = "DropMenu"
        DropMenu.Parent = DD
        DropMenu.Active = true
        DropMenu.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        DropMenu.BorderColor3 = Color3.fromRGB(255, 255, 255)
        DropMenu.BorderSizePixel = 0
        DropMenu.Position = UDim2.new(0.0359281451, 0, 1, 0)
        DropMenu.Size = UDim2.new(0, 154, 0, 0)
        DropMenu.ZIndex = 2
        DropMenu.ScrollBarThickness = 10
        DropMenu.ScrollBarImageTransparency = 1
        DropMenu.AutomaticCanvasSize = "Y"

        UIListLayout.Parent = DropMenu
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

        for i, v in pairs(optionsT) do
            local Option = Instance.new("TextButton")
            Option.Name = "Option " .. i
            Option.Parent = DropMenu
            Option.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
            Option.BorderColor3 = Color3.fromRGB(47, 47, 47)
            Option.Size = UDim2.new(0, 154, 0, 19)
            Option.Font = Enum.Font.Arial
            Option.Text = v
            Option.TextColor3 = Color3.fromRGB(255, 255, 255)
            Option.TextSize = 14.000
        end

        -- Scripts:

        local function FEAAPL_fake_script() -- DropDown.LocalScript
            local script = Instance.new("LocalScript", DropDown)

            local RegSize = UDim2.new(0, 154, 0, 96)
            local ClosedSize = UDim2.new(0, 154, 0, 0)
            local dmenu = script.Parent.DD.DropMenu
            local debounce = false
            local dd = false

            for i, v in pairs(dmenu:GetChildren()) do
                if v:IsA("TextButton") then
                    v.MouseButton1Click:Connect(
                        function()
                            local selection = v.Text
                            script.Parent.DD.Text = selection
                            pcall(callback, script.Parent.DD.Text)
                        end
                    )
                end
            end

            script.Parent.DD.MouseButton1Click:Connect(
                function()
                    if dd == false and not debounce then
                        dd = true
                        debounce = true

                        dmenu.ScrollBarImageTransparency = 0
                        dmenu:TweenSize(RegSize, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2, true)
                        wait(0.2)
                        debounce = false
                    elseif dd == true and not debounce then
                        dd = false
                        debounce = true

                        dmenu.ScrollBarImageTransparency = 1
                        dmenu:TweenSize(ClosedSize, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2, true)
                        wait(0.2)
                        debounce = false
                    end
                end
            )
        end
        coroutine.wrap(FEAAPL_fake_script)()
    end

    return MainLib
end

return paradaxlib
