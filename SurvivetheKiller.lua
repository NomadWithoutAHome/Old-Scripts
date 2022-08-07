local work = game:GetService("Workspace")
local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayers = game:GetService("Players"):GetPlayers()

local espState = false
local clipState = false


if game:GetService("CoreGui"):FindFirstChild("SurviveTheKillerDohm") then
    game:GetService("CoreGui").SurviveTheKillerDohm:Destroy()
end

local function CreateInstance(cls, props)
    local inst = Instance.new(cls)
    for i, v in pairs(props) do
        inst[i] = v
    end
    return inst
end

local SurviveTheKillerDohm =
    CreateInstance(
    "ScreenGui",
    {DisplayOrder = 0, Enabled = true, ResetOnSpawn = true, Name = "SurviveTheKillerDohm", Parent = game.CoreGui}
)
local main =
    CreateInstance(
    "Frame",
    {
        Style = Enum.FrameStyle.Custom,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(0.752941, 0.752941, 0.752941),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.00499999989, 0, 0.980000019, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 435, 0, 295),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "main",
        Parent = SurviveTheKillerDohm
    }
)
local topBar =
    CreateInstance(
    "Frame",
    {
        Style = Enum.FrameStyle.Custom,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(0, 0, 0.509804),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0, 0, -0.00212521316, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 434, 0, 22),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "topBar",
        Parent = main
    }
)
local topText =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "Survive the killer! [ DohmScripts.com ]",
        TextColor3 = Color3.new(1, 1, 1),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(1, 1, 1),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.0391705073, 0, 0, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 409, 0, 22),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "topText",
        Parent = topBar
    }
)
local closeButton =
    CreateInstance(
    "ImageButton",
    {
        Image = "http://www.roblox.com/asset/?id=6372412037",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Stretch,
        SliceCenter = Rect.new(0, 0, 0, 0),
        AutoButtonColor = true,
        Modal = false,
        Selected = false,
        Style = Enum.ButtonStyle.Custom,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.956364155, 0, 0.094298929, 0),
        Rotation = 0,
        Selectable = true,
        Size = UDim2.new(0, 18, 0, 17),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "closeButton",
        Parent = topBar
    }
)
local iconImage =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6372547991",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Stretch,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.0138248848, 0, 0.0909090936, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 19, 0, 17),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "iconImage",
        Parent = topBar
    }
)
local DivideBar =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6372436852",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 0,
        ClipsDescendants = true,
        Draggable = false,
        Position = UDim2.new(0.213793099, 0, 0.0995696485, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 10, 0, 265),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "DivideBar",
        Parent = main
    }
)
local Home =
    CreateInstance(
    "ImageButton",
    {
        Image = "http://www.roblox.com/asset/?id=6372455265",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        AutoButtonColor = true,
        Modal = false,
        Selected = false,
        Style = Enum.ButtonStyle.Custom,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.0154441399, 0, 0.158740237, 0),
        Rotation = 0,
        Selectable = true,
        Size = UDim2.new(0, 78, 0, 24),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "Home",
        Parent = main
    }
)
local homeText =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "Home",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.147921801, 0, 0.0725987852, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 53, 0, 19),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "homeText",
        Parent = Home
    }
)
local Survivor =
    CreateInstance(
    "ImageButton",
    {
        Image = "http://www.roblox.com/asset/?id=6372455265",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        AutoButtonColor = true,
        Modal = false,
        Selected = false,
        Style = Enum.ButtonStyle.Custom,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.0149999997, 0, 0.270000011, 0),
        Rotation = 0,
        Selectable = true,
        Size = UDim2.new(0, 78, 0, 24),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "Survivor",
        Parent = main
    }
)
local survivorText =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "Survivor",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.147921801, 0, 0.0725987852, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 53, 0, 19),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "survivorText",
        Parent = Survivor
    }
)
local Settings =
    CreateInstance(
    "ImageButton",
    {
        Image = "http://www.roblox.com/asset/?id=6372455265",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        AutoButtonColor = true,
        Modal = false,
        Selected = false,
        Style = Enum.ButtonStyle.Custom,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.0149999997, 0, 0.49000001, 0),
        Rotation = 0,
        Selectable = true,
        Size = UDim2.new(0, 78, 0, 24),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "Settings",
        Parent = main
    }
)
local settingsText =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "Settings",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.147921801, 0, 0.0725987852, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 53, 0, 19),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "settingsText",
        Parent = Settings
    }
)
local SectionSurvival =
    CreateInstance(
    "Frame",
    {
        Style = Enum.FrameStyle.Custom,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.260167211, 0, 0.1274762, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 301, 0, 247),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = false,
        ZIndex = 1,
        Name = "SectionSurvival",
        Parent = main
    }
)
local secFrame =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6372497717",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Stretch,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0, 0, 0, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 312, 0, 247),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "secFrame",
        Parent = SectionSurvival
    }
)
local ExitMap =
    CreateInstance(
    "ImageButton",
    {
        Image = "http://www.roblox.com/asset/?id=6372455265",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        AutoButtonColor = true,
        Modal = false,
        Selected = false,
        Style = Enum.ButtonStyle.Custom,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.387537152, 0, 0.118254408, 0),
        Rotation = 0,
        Selectable = true,
        Size = UDim2.new(0, 78, 0, 24),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "ExitMap",
        Parent = SectionSurvival
    }
)
local exitText =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "Exit Map",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.147921801, 0, 0.0725987852, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 53, 0, 19),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "exitText",
        Parent = ExitMap
    }
)
local ViewExits =
    CreateInstance(
    "ImageButton",
    {
        Image = "http://www.roblox.com/asset/?id=6372455265",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        AutoButtonColor = true,
        Modal = false,
        Selected = false,
        Style = Enum.ButtonStyle.Custom,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.388000011, 0, 0.25, 0),
        Rotation = 0,
        Selectable = true,
        Size = UDim2.new(0, 78, 0, 24),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "ViewExits",
        Parent = SectionSurvival
    }
)
local viewText =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "Reveal Exit",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.147921801, 0, 0.0725987852, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 53, 0, 19),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "viewText",
        Parent = ViewExits
    }
)
local GetFuel =
    CreateInstance(
    "ImageButton",
    {
        Image = "http://www.roblox.com/asset/?id=6372455265",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        AutoButtonColor = true,
        Modal = false,
        Selected = false,
        Style = Enum.ButtonStyle.Custom,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.388000011, 0, 0.389999986, 0),
        Rotation = 0,
        Selectable = true,
        Size = UDim2.new(0, 78, 0, 24),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "GetFuel",
        Parent = SectionSurvival
    }
)
local getFuelText =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "Get Fuel",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.147921801, 0, 0.0725987852, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 53, 0, 19),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "getFuelText",
        Parent = GetFuel
    }
)
local Killer =
    CreateInstance(
    "ImageButton",
    {
        Image = "http://www.roblox.com/asset/?id=6372455265",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        AutoButtonColor = true,
        Modal = false,
        Selected = false,
        Style = Enum.ButtonStyle.Custom,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.0149999997, 0, 0.379999995, 0),
        Rotation = 0,
        Selectable = true,
        Size = UDim2.new(0, 78, 0, 24),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "Killer",
        Parent = main
    }
)
local killerText =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "Killer",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.147921801, 0, 0.0725987852, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 53, 0, 19),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "killerText",
        Parent = Killer
    }
)
local SectionKiller =
    CreateInstance(
    "Frame",
    {
        Style = Enum.FrameStyle.Custom,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.260167211, 0, 0.1274762, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 301, 0, 247),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = false,
        ZIndex = 1,
        Name = "SectionKiller",
        Parent = main
    }
)
local secFrame =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6372497717",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Stretch,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0, 0, 0, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 312, 0, 247),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "secFrame",
        Parent = SectionKiller
    }
)
local SectionSettings =
    CreateInstance(
    "Frame",
    {
        Style = Enum.FrameStyle.Custom,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.260167211, 0, 0.1274762, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 301, 0, 247),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = false,
        ZIndex = 1,
        Name = "SectionSettings",
        Parent = main
    }
)
local secFrame =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6372497717",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Stretch,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0, 0, 0, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 312, 0, 247),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "secFrame",
        Parent = SectionSettings
    }
)
local NoClip =
    CreateInstance(
    "ImageButton",
    {
        Image = "http://www.roblox.com/asset/?id=6372455265",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        AutoButtonColor = true,
        Modal = false,
        Selected = false,
        Style = Enum.ButtonStyle.Custom,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.388000011, 0, 0.25, 0),
        Rotation = 0,
        Selectable = true,
        Size = UDim2.new(0, 78, 0, 24),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "NoClip",
        Parent = SectionSettings
    }
)
local clipText =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "No Clip On",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.147921801, 0, 0.0725987852, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 53, 0, 19),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "clipText",
        Parent = NoClip
    }
)
local PlayerESP =
    CreateInstance(
    "ImageButton",
    {
        Image = "http://www.roblox.com/asset/?id=6372455265",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        AutoButtonColor = true,
        Modal = false,
        Selected = false,
        Style = Enum.ButtonStyle.Custom,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.388000011, 0, 0.389999986, 0),
        Rotation = 0,
        Selectable = true,
        Size = UDim2.new(0, 78, 0, 24),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "PlayerESP",
        Parent = SectionSettings
    }
)
local espText =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "ESP On",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.147921801, 0, 0.0725987852, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 53, 0, 19),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "espText",
        Parent = PlayerESP
    }
)
local CollectCoins =
    CreateInstance(
    "ImageButton",
    {
        Image = "http://www.roblox.com/asset/?id=6372455265",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        AutoButtonColor = true,
        Modal = false,
        Selected = false,
        Style = Enum.ButtonStyle.Custom,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.387537152, 0, 0.118254408, 0),
        Rotation = 0,
        Selectable = true,
        Size = UDim2.new(0, 78, 0, 24),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "CollectCoins",
        Parent = SectionSettings
    }
)
local collectText =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "Collect Coins",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.147921801, 0, 0.0725987852, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 53, 0, 19),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "collectText",
        Parent = CollectCoins
    }
)
local SectionHome =
    CreateInstance(
    "Frame",
    {
        Style = Enum.FrameStyle.Custom,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.260167211, 0, 0.1274762, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 301, 0, 247),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "SectionHome",
        Parent = main
    }
)
local secFrame =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6372497717",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Stretch,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0, 0, 0, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 312, 0, 247),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "secFrame",
        Parent = SectionHome
    }
)
local GameTitle =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size32,
        Text = "Survive the killer!",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 30,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.205980062, 0, 0.0404858291, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 200, 0, 34),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "GameTitle",
        Parent = SectionHome
    }
)
local gamePicture =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6372539795",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Stretch,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.225913629, 0, 0.17813766, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 194, 0, 171),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "gamePicture",
        Parent = SectionHome
    }
)
local GameTitle =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.SourceSans,
        FontSize = Enum.FontSize.Size14,
        Text = "GUI Version 1.0",
        TextColor3 = Color3.new(0, 0, 0),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 1,
        TextTransparency = 0,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.215946838, 0, 0.862348199, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 200, 0, 34),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "GameTitle",
        Parent = SectionHome
    }
)
local SectionBase =
    CreateInstance(
    "Frame",
    {
        Style = Enum.FrameStyle.Custom,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 5,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.260167211, 0, 0.1274762, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 301, 0, 247),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = false,
        ZIndex = 0,
        Name = "SectionBase",
        Parent = main
    }
)
local secFrame =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6372497717",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Stretch,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0, 0, 0, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 312, 0, 247),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "secFrame",
        Parent = SectionBase
    }
)



main.Active = true
main.Draggable = true

closeButton.MouseButton1Click:Connect(
    function()
        espState = false
        main:Destroy()
    end
)

Home.MouseButton1Click:Connect(
    function()
        print("clicked")
        if SectionHome.Visible == false then
            SectionSettings.Visible = false
            SectionKiller.Visible = false
            SectionSurvival.Visible = false
            SectionHome.Visible = true
        end
    end
)

Survivor.MouseButton1Click:Connect(
    function()
        print("clicked")
        if SectionSurvival.Visible == false then
            SectionSettings.Visible = false
            SectionKiller.Visible = false
            SectionSurvival.Visible = true
            SectionHome.Visible = false
        end
    end
)

Killer.MouseButton1Click:Connect(
    function()
        print("clicked")
        if SectionKiller.Visible == false then
            SectionSettings.Visible = false
            SectionKiller.Visible = true
            SectionSurvival.Visible = false
            SectionHome.Visible = false
        end
        errorMessage()
    end
)

Settings.MouseButton1Click:Connect(
    function()
        print("clicked")
        if SectionSettings.Visible == false then
            SectionSettings.Visible = true
            SectionKiller.Visible = false
            SectionSurvival.Visible = false
            SectionHome.Visible = false
        end
    end
)

ExitMap.MouseButton1Click:Connect(
    function()
        print("clicked")
        mapExit()
    end
)

GetFuel.MouseButton1Click:Connect(
    function()
        print("clicked")
        collectFuel()
    end
)

ViewExits.MouseButton1Click:Connect(
    function()
        print("clicked")
        exitReveal()
    end
)

CollectCoins.MouseButton1Click:Connect(
    function()
        print("clicked")
        collectCoin()
    end
)

PlayerESP.MouseButton1Click:Connect(
    function()
        if espState == false then
            PlayerESP.ImageColor3 = Color3.new(150, 150, 150)
            espText.Text = "ESP Off"
            espState = true
        else
            espText.Text = "ESP On"
            trashBin()
            espState = false
        end
    end
)

NoClip.MouseButton1Click:Connect(
    function()
        if clipState == false then
            Noclipping = game:GetService("RunService").Stepped:connect(clipLoop)
            clipText.Text = 'No Clip On'
            clipState = true
        else
            clipText.Text = 'No Clip Off'
            Noclipping:Disconnect()
            clipState = false
        end
    end
)

main:TweenPosition(UDim2.new(0.0, 5, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)

function collectCoin()
    local mapCoins = game:GetService("Workspace"):WaitForChild("CurrentMap"):WaitForChild("Coins")
    for _, coins in pairs(mapCoins:GetDescendants()) do
        if coins:IsA("TouchTransmitter") then
            firetouchinterest(thisPlayer.Character.HumanoidRootPart, coins.Parent, 0)
            firetouchinterest(thisPlayer.Character.HumanoidRootPart, coins.Parent, 1)
        end
    end
end

function collectFuel()
    local mapFuel = game:GetService("Workspace").RocketFuel
    for _, fuel in pairs(mapFuel:GetDescendants()) do
        if fuel:IsA("TouchTransmitter") then
            firetouchinterest(thisPlayer.Character.HumanoidRootPart, fuel.Parent, 0)
            firetouchinterest(thisPlayer.Character.HumanoidRootPart, fuel.Parent, 1)
        end
    end
end

function mapExit()
    local exitDoors = game:GetService("Workspace"):WaitForChild("CurrentMap"):WaitForChild("ExitDoor")
    for _, exitDoor in pairs(exitDoors:GetDescendants()) do
        if exitDoor:IsA("TouchTransmitter") then
            firetouchinterest(thisPlayer.Character.HumanoidRootPart, exitDoor.Parent, 0)
            firetouchinterest(thisPlayer.Character.HumanoidRootPart, exitDoor.Parent, 1)
        end
    end
end

function GetEnemyPlayers()
    players = {}
    if #game:GetService("Teams"):GetTeams() > 0 then
        local friendly = thisPlayer.Team.Name
        for i, v in pairs(game:GetService("Teams"):GetTeams()) do
            if v ~= game.Players.LocalPlayer and v ~= thisPlayer.Team and v.Name ~= "Lobby" then
                local enemyPlayers = v:GetPlayers()
                for i, v in pairs(enemyPlayers) do
                    table.insert(players, v)
                end
            end
        end
        return players
    end
end

function isnil(thing)
    return (thing == nil)
end

local function round(n)
    return math.floor(tonumber(n) + 0.5)
end

function UpdatePlayerChams()
    print("ESP IS ON")
    if #game:GetService("Teams"):GetTeams() > 0 and checkIfLobby() == false and espState == true then
        local enemies = GetEnemyPlayers()
        for i, v in pairs(enemies) do
            pcall(
                function()
                    if not isnil(v.Character) then
                        for _, k in pairs(v.Character:GetChildren()) do
                            if k:IsA "BasePart" and not k:FindFirstChild "Cham" then
                                local cham = Instance.new("BoxHandleAdornment", k)
                                cham.ZIndex = 10
                                cham.Adornee = k
                                cham.AlwaysOnTop = true
                                cham.Size = k.Size
                                cham.Transparency = .7
                                cham.Color3 = Color3.new(1, 0, 0)
                                cham.Name = "Cham"
                            end
                        end
                        if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild "NameEsp" then
                            local bill = Instance.new("BillboardGui", v.Character.Head)
                            bill.Name = "NameEsp"
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v.Character.Head
                            bill.AlwaysOnTop = true
                            local name = Instance.new("TextLabel", bill)
                            name.TextWrapped = true
                            name.Text =
                                (v.Name ..
                                " " ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        "m")
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = "Top"
                            name.TextColor3 = Color3.new(1, 1, 1)
                            name.BackgroundTransparency = 1
                        else
                            v.Character.Head.NameEsp.TextLabel.Text =
                                (v.Name ..
                                " " ..
                                    round(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            v.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        "m")
                        end
                    end
                end
            )
        end
    end
end

function trashBin()
    local chr = game.Players
    for _, v in pairs(chr:GetChildren()) do
        if not isnil(v.Character) then
            for _, k in pairs(v.Character:GetChildren()) do
                if k:FindFirstChild("Cham") then
                    k.Cham:Destroy()
                end
            end
            if not isnil(v.Character.Head) and not isnil(v.Character.Head:FindFirstChild("NameEsp")) then
                if v.Character.Head:FindFirstChild("NameEsp") then
                    v.Character.Head.NameEsp:Destroy()
                end
            end
        end
    end
end

function checkIfLobby()
    if thisPlayer.Team.Name == "Lobby" then
        isLobby = true
        return true
    else
        return false
    end
end

function exitReveal()
    for _, v in pairs(work:WaitForChild("CurrentMap"):GetDescendants()) do
        if v.Name == "ImageLabel" then
            v.Visible = true
            v.Parent.Enabled = true
        end
    end
end

function clipLoop()
    if thisPlayer.Character ~= nil then
        for _, child in pairs(thisPlayer.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true then
                child.CanCollide = false
            end
        end
    end
end

function errorMessage()
    
    if game:GetService("CoreGui"):FindFirstChild("ScreenGui") then
    game:GetService("CoreGui").ScreenGui:Destroy()
end

    local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end
    
    
local ErrorMessage = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='ErrorMessage', Parent=game.CoreGui})
local mainError = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.239811912, 0, 0.252681762, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 623, 0, 159),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'mainError',Parent = ErrorMessage})
local ImageLabel = CreateInstance('ImageLabel',{Image='http://www.roblox.com/asset/?id=6372936324',ImageColor3=Color3.new(1, 1, 1),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=0,ScaleType=Enum.ScaleType.Stretch,SliceCenter=Rect.new(0, 0, 0, 0),Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(-0.00481540943, 0, -0.00628930796, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 626, 0, 160),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ImageLabel',Parent = mainError})
local errorButton = CreateInstance('ImageButton',{Image='rbxasset://textures/ui/GuiImagePlaceholder.png',ImageColor3=Color3.new(1, 1, 1),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=1,ScaleType=Enum.ScaleType.Stretch,SliceCenter=Rect.new(0, 0, 0, 0),AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.954125285, 0, 0.039707303, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 28, 0, 17),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='errorButton',Parent = mainError})

    mainError.Active = true
    mainError.Draggable = true
    
    playSound(263105619)
    
    errorButton.MouseButton1Click:Connect(
    function()
        mainError:Destroy()
    end
)
end

function playSound(sid)
    local s = Instance.new("Sound")
    s.Name = "Sound"
    s.SoundId = "http://www.roblox.com/asset/?id="..sid 
    s.Volume = 10
    s.Pitch = 1
    s.Looped = false
    s.archivable = false
    s.Parent = game.Workspace
    wait(0)
    s:play()
end



function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Insert then
        if main.Position == UDim2.new(0.005, 0, 0.98, 0) then
            main:TweenPosition(UDim2.new(0.005, 0, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
        else
            main:TweenPosition(UDim2.new(0.005, 0, 0.98, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
        end
    end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)

while wait() do
    if espState == true then
        UpdatePlayerChams()
    end
end


