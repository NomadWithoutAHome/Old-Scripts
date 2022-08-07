local thisPlayer = game:GetService('Players').LocalPlayer
local Player = game:GetService('Players')
local pet_data = require(game.ReplicatedStorage.ModulesClient.PetDataClient)
local util = require(game.ReplicatedStorage.bUtilities)

util.easyNetwork:InvokeServer("prox_plusOnePetEquip1")
util.easyNetwork:InvokeServer("prox_plusOnePetEquip2")
pet_data.syncPetData()

for _, v in pairs(Player:GetPlayers()) do
    pet = util.easyNetwork:InvokeServer("getPlayersEquippedPets", v.Name)
    print(pet)
end
