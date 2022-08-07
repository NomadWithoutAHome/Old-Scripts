local thisPlayer = game:GetService('Players').LocalPlayer


function float()
    pcall(
        function()
            thisPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(11)
        end
    )
end


thisPlayer.Character.Humanoid.PlatformStand = true
game:GetService("RunService").Stepped:connect(float)