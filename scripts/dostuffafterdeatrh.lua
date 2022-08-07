thisPlayer = game:GetService('Players').LocalPlayer


thisPlayer.Character.Humanoid.Died:Connect(function()
    thisPlayer.CharacterAdded:Connect(function(char)
       local humanoid = char:WaitForChild("Humanoid")
       humanoid.WalkSpeed = 200
    end
    )
  

end)
