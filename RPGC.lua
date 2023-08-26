if game.PlaceId == 9031522337 then

MValue = ""
getgenv().A_C = false;

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("DraWatX RPGC")

local a = w:CreateFolder("Auto")
  
local b = w:CreateFolder("Menus")

local c = w:CreateFolder("Settings")

a:Toggle("Click",function(bool)
    getgenv().A_C = bool
    if bool then
        A_C()
    end
end)

b:Dropdown("None",{"P","A","Aaa","eee","roto","Quest Menu","Shop"},true,function(value)
    MValue = value
end)

b:Button("Open",function()
    if string.find(MValue, "Quest") then
        game:GetService("ReplicatedStorage").Remotes.ClientEVENT:Fire("hideMainExcept", "ZoneQuest")
        game:GetService("ReplicatedStorage").Remotes.ClientEVENT:Fire("updateQuests","Home")
        game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript.Modules.QuestEvent:Fire("update", "Home")
        game:GetService("ReplicatedStorage").Remotes.actionFunctions:InvokeServer("getZoneQuests", "Home")
    end
end)

c:DestroyGui()
  
function A_C()
    spawn(function()
        while (getgenv().A_C == true)
        do
            local args = {[1] = "swing"}
            game:GetService("Players").LocalPlayer.Character.WeaponEvent:FireServer(unpack(args))
            wait()
        end
    end)
end
end
