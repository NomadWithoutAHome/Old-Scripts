local thisPlayer = game:GetService('Players').LocalPlayer
local pet_data = require(game.ReplicatedStorage.ModulesClient.PetDataClient)
local util = require(game.ReplicatedStorage.bUtilities)

util.easyNetwork:InvokeServer("prox_plusOnePetEquip1")
util.easyNetwork:InvokeServer("prox_plusOnePetEquip2")
pet_data.syncPetData()