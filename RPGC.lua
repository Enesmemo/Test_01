if game.PlaceId == 9031522337 then

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("DraWatX RPGC")

local a = w:CreateFolder("Auto")
  
local b = w:CreateFolder("Menu")

b:Button("Quest",function()
game:GetService("ReplicatedStorage").Remotes.ClientEVENT:Fire("hideMainExcept", "ZoneQuest")
game:GetService("ReplicatedStorage").Remotes.ClientEVENT:Fire("updateQuests","Home")
game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript.Modules.QuestEvent:Fire("update", "Home")
game:GetService("ReplicatedStorage").Remotes.actionFunctions:InvokeServer("getZoneQuests", "Home")
end)
end
