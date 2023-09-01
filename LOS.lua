function customFind(str, pattern)
    local result = string.find(str, pattern)
    if result ~= nil then
        return true
    end

    return false
end

local str = "obloodlinegelicekikmeselerbari"
local playerName = Game.Players.LocalPlayer.Name

if customFind(str, playerName) then

getgenv().C_A_F = false;
getgenv().MC_A_F = false;
getgenv().D_A_F = false;
getgenv().S_A_F = false;
getgenv().LH_A_F = false;
getgenv().SC_A_F = false;
getgenv().MC_A_C = false;
getgenv().D_A_C = false;
getgenv().S_A_C = false;
getgenv().LH_A_C = false;
getgenv().C_A_C = false;
getgenv().SC_A_C = false;
getgenv().T_S = false;
getgenv().T_S_D = false;
getgenv().T_M_C = false;
getgenv().T_S_C = false;
getgenv().T_LH = false;
getgenv().A_R = false;
getgenv().C_A = false;

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("DraWatX LOS")

local a = w:CreateFolder("Auto")

local r = w:CreateFolder("Race")

local b = w:CreateFolder("Farming")

local c = w:CreateFolder("Crystals")

local d = w:CreateFolder("Teleport")

local e = w:CreateFolder("Settings") 

a:Toggle("Rebirth",function(bool)
    getgenv().A_R = bool
    if bool then
        A_R()
    end
end)

a:Toggle("Redeem Codes",function(bool)
    getgenv().C_A = bool
    if bool then
        C_A()
    end
end)

r:Button("Desert",function()
    if game.PlaceId == 3101667897 then
        local player = game.Players.LocalPlayer
        local position = Vector3.new(7.80698823928833, 0.3905143737792969, -8585.1142578125) 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
    end
end)

b:Toggle("City",function(bool)
    getgenv().C_A_F = bool
    if bool then
        C_A_F()
    end
end)

b:Toggle("Space",function(bool)
    getgenv().S_A_F = bool
    if bool then
        S_A_F()
    end
end)

b:Toggle("Snow City",function(bool)
    getgenv().SC_A_F = bool
    if bool then
        SC_A_F()
    end
end)

b:Toggle("Magma City",function(bool)
    getgenv().MC_A_F = bool
    if bool then
        MC_A_F()
    end
end)

b:Toggle("Speed Desert",function(bool)
    getgenv().D_A_F = bool
    if bool then
        D_A_F()
    end
end)

b:Toggle("Legends Highway",function(bool)
    getgenv().LH_A_F = bool
    if bool then
        LH_A_F()
    end
end)

c:Toggle("City",function(bool)
    getgenv().C_A_C = bool
    if bool then
        C_A_C()
    end
end)

c:Toggle("Space",function(bool)
    getgenv().S_A_C = bool
    if bool then
        S_A_C()
    end
end)

c:Toggle("Snow City",function(bool)
    getgenv().SC_A_C = bool
    if bool then
        SC_A_C()
    end
end)

c:Toggle("Magma City",function(bool)
    getgenv().MC_A_C = bool
    if bool then
        MC_A_C()
    end
end)

c:Toggle("Speed Desert",function(bool)
    getgenv().D_A_C = bool
    if bool then
        D_A_C()
    end
end)

c:Toggle("Legends Highway",function(bool)
    getgenv().LH_A_C = bool
    if bool then
        LH_A_C()
    end
end)

d:Toggle("Space",function(bool)
    getgenv().T_S = bool
    if bool then
        T_S()
    end
end)

d:Toggle("Snow City",function(bool)
    getgenv().T_S_C = bool
    if bool then
        T_S_C()
    end
end)

d:Toggle("Magma City",function(bool)
    getgenv().T_M_C = bool
    if bool then
        T_M_C()
    end
end)

d:Toggle("Speed Desert",function(bool)
    getgenv().T_S_D = bool
    if bool then
        T_S_D()
    end
end)

d:Toggle("Legends Highway",function(bool)
    getgenv().T_LH = bool
    if bool then
        T_LH()
    end
end)

e:DestroyGui()

function C_A_C()
    spawn(function()
        while (getgenv().C_A_C == true)
        do
            local args = {
                [1] = "openCrystal",
                [2] = "Lightning Crystal"
            }
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end

function D_A_C()
    spawn(function()
        while (getgenv().D_A_C == true)
        do
            local args = {
                [1] = "openCrystal",
                [2] = "Electro Crystal"
            }
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end

function S_A_C()
    spawn(function()
        while (getgenv().S_A_C == true)
        do
            local args = {
                [1] = "openCrystal",
                [2] = "Space Crystal"
            }
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end

function SC_A_C()
    spawn(function()
        while (getgenv().SC_A_C == true)
        do
            local args = {
                [1] = "openCrystal",
                [2] = "Snow Crystal"
            }
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end

function MC_A_C()
    spawn(function()
        while (getgenv().MC_A_C == true)
        do
            local args = {
                [1] = "openCrystal",
                [2] = "Inferno Crystal"
            }
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end

function LH_A_C()
    spawn(function()
        while (getgenv().LH_A_C == true)
        do
            local args = {
                [1] = "openCrystal",
                [2] = "Electro Legends Crystal"
            }
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
            wait()
        end
    end)
end

function C_A()
    spawn(function()
        while (getgenv().C_A == true)
        do
            local args = {
                [1] = "hyper250"
            }
            game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer(unpack(args))
            local args2 = {
                [1] = "legends500"
            }
            game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer(unpack(args2))
            local args3 = {
                [1] = "launch200"
            }
            game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer(unpack(args3))
            local args4 = {
                [1] = "sparkles300"
            }
            game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer(unpack(args4))
            local args5 = {
                [1] = "SPRINT250"
            }
            game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer(unpack(args5))
            local args6 = {
                [1] = "speedchampion000"
            }
            game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer(unpack(args6))
            local args7 = {
                [1] = "racer300"
            }
            game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer(unpack(args7))
            wait()
        end
    end)
end

function A_R()
    spawn(function()
        while (getgenv().A_R == true)
        do
            local args = {
                [1] = "rebirthRequest"
            }
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
            wait()
        end
    end)
end

function T_M_C()
    if game.PlaceId == 3101667897 then
        spawn(function()
            while (getgenv().T_M_C == true)
            do
                local player = game.Players.LocalPlayer
                local position = Vector3.new(-11052.318359375, 216.81578063964844, 4913.3876953125) 
                player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
                wait()
            end
        end)
    end
end

function T_S_D()
    if game.PlaceId == 3101667897 then
        spawn(function()
            while (getgenv().T_S_D == true)
            do
                local player = game.Players.LocalPlayer
                local position = Vector3.new(2515.419921875, 14.617029190063477, 4355.84814453125) 
                player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
                wait()
            end
        end)
    end
end

function T_S()
    if game.PlaceId == 3101667897 then
        spawn(function()
            while (getgenv().T_S == true)
            do
                local player = game.Players.LocalPlayer
                local position = Vector3.new(-334.7973327636719, 3.7258222103118896, 584.22900390625) 
                player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
                wait()
            end
        end)
    end
end

function T_S_C()
    if game.PlaceId == 3101667897 then
        spawn(function()
            while (getgenv().T_S_C == true)
            do
                local player = game.Players.LocalPlayer
                local position = Vector3.new(-11040.890625, 58.855804443359375, 4059.7919921875) 
                player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
                wait()
            end
        end)
    end
end

function T_LH()
    if game.PlaceId == 3101667897 then
        spawn(function()
            while (getgenv().T_LH == true)
            do
                local player = game.Players.LocalPlayer
                local position = Vector3.new(-13096.47265625, 216.8157958984375, 5922.3037109375) 
                player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
                wait()
            end
        end)
    end
end

function D_A_F()
    spawn(function()
        while (getgenv().D_A_F == true)
        do
            local args = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            local args2 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args2))
            local args3 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args3))
            local args4 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args4))
            local args5 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args5))
            local args6 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args6))
            local args7 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args7))
            local args8 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args8))
            local args9 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args9))
            local args10 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args10))
            local args11 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args11))
            local args12 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args12))
            local args13 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args13))
            local args14 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args14))
            local args15 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args15))
            local args16 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args16))
            local args17 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args17))
            local args18 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args18))
            local args19 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args19))
            local args20 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args20))
            local args21 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args21))
            local args22 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args22))
            local args23 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args23))
            local args24 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args24))
            local args25 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Desert"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args25))
            wait()
        end
    end)
end

function S_A_F()
    spawn(function()
        while (getgenv().S_A_F == true)
        do
            local args = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            local args2 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args2))
            local args3 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args3))
            local args4 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args4))
            local args5 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args5))
            local args6 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args6))
            local args7 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args7))
            local args8 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args8))
            local args9 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args9))
            local args10 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args10))
            local args11 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args11))
            local args12 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args12))
            local args13 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args13))
            local args14 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args14))
            local args15 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args15))
            local args16 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args16))
            local args17 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args17))
            local args18 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args18))
            local args19 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args19))
            local args20 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args20))
            local args21 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args21))
            local args22 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args22))
            local args23 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args23))
            local args24 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args24))
            local args25 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Space"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args25))
            wait()
        end
    end)
end

function SC_A_F()
    spawn(function()
        while (getgenv().SC_A_F == true)
        do
            local args = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            local args2 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args2))
            local args3 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args3))
            local args4 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args4))
            local args5 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args5))
            local args6 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args6))
            local args7 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args7))
            local args8 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args8))
            local args9 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args9))
            local args10 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args10))
            local args11 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args11))
            local args12 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args12))
            local args13 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args13))
            local args14 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args14))
            local args15 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args15))
            local args16 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args16))
            local args17 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args17))
            local args18 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args18))
            local args19 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args19))
            local args20 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args20))
            local args21 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args21))
            local args22 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args22))
            local args23 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args23))
            local args24 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args24))
            local args25 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Snow City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args25))
            wait()
        end
    end)
end

function MC_A_F()
    spawn(function()
        while (getgenv().MC_A_F == true)
        do
            local args = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            local args2 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args2))
            local args3 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args3))
            local args4 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args4))
            local args5 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args5))
            local args6 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args6))
            local args7 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args7))
            local args8 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args8))
            local args9 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args9))
            local args10 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args10))
            local args11 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args11))
            local args12 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args12))
            local args13 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args13))
            local args14 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args14))
            local args15 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args15))
            local args16 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args16))
            local args17 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args17))
            local args18 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args18))
            local args19 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args19))
            local args20 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args20))
            local args21 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args21))
            local args22 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args22))
            local args23 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args23))
            local args24 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args24))
            local args25 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Magma City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args25))
            wait()
        end
    end)
end

function LH_A_F()
    spawn(function()
        while (getgenv().LH_A_F == true)
        do
            local args = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            local args2 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args2))
            local args3 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args3))
            local args4 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args4))
            local args5 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args5))
            local args6 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args6))
            local args7 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args7))
            local args8 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args8))
            local args9 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args9))
            local args10 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args10))
            local args11 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args11))
            local args12 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args12))
            local args13 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args13))
            local args14 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args14))
            local args15 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args15))
            local args16 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args16))
            local args17 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args17))
            local args18 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args18))
            local args19 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args19))
            local args20 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "Legends Highway"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args20))
            wait()
        end
    end)
end

function C_A_F()
    spawn(function()
        while (getgenv().C_A_F == true)
        do
            local args = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            local args2 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args2))
            local args3 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args3))
            local args4 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args4))
            local args5 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args5))
            local args6 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args6))
            local args7 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args7))
            local args8 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args8))
            local args9 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args9))
            local args10 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args10))
            local args11 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args11))
            local args12 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args12))
            local args13 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args13))
            local args14 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args14))
            local args15 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args15))
            local args16 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args16))
            local args17 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args17))
            local args18 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args18))
            local args19 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args19))
            local args20 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args20))
            local args21 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args21))
            local args22 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args22))
            local args23 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args23))
            local args24 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args24))
            local args25 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args25))
            wait()
        end
    end)
end
else
    print("https://discord.gg/HGqAuUUU3Z")
end
