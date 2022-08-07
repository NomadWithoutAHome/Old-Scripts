local thisPlayer = game:GetService('Players').LocalPlayer

local prefix = ';'

local commands = {
   [prefix.."walkspeed"] = function(args)
       print('here')
      thisPlayer.Character.Humanoid.WalkSpeed = 50
   end,
   [prefix.."command2"] = function()
      --more stuff
   end
}

local chat = thisPlayer.Chatted:Connect(function(msg)
    local args = string.split(msg)
    local cmd = args[1]
    print('doing')
    commands[cmd]()

end
)

wait(30)
chat:Disconnect()
