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

if game.PlaceId == 3101667897 then

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
getgenv().A_R = false;
getgenv().C_A = false;

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("DraWatX LOS")

local a = w:CreateFolder("Auto")

local b = w:CreateFolder("Farming")

local c = w:CreateFolder("Crystals")

local d = w:CreateFolder("Settings") 

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

d:DestroyGui()

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
            local args26 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args26))
            local args27 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args27))
            local args28 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args28))
            local args29 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args29))
            local args30 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args30))
            local args31 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args31))
            local args32 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args32))
            local args33 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args33))
            local args34 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args34))
            local args35 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args35))
            local args36 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args36))
            local args37 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args37))
            local args38 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args38))
            local args39 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args39))
            local args40 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args40))
            local args41 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args41))
            local args42 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args42))
            local args43 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args43))
            local args44 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args44))
            local args45 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args45))
            local args46 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args46))
            local args47 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args47))
            local args48 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args48))
            local args49 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args49))
            local args50 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args50))
            local args51 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args51))
            local args52 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args52))
            local args53 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args53))
            local args54 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args54))
            local args55 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args55))
            local args56 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args56))
            local args57 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args57))
            local args58 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args58))
            local args59 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args59))
            local args60 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args60))
            local args61 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args61))
            local args62 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args62))
            local args63 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args63))
            local args64 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args64))
            local args65 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args65))
            local args66 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args66))
            local args67 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args67))
            local args68 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args68))
            local args69 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args69))
            local args70 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args70))
            local args71 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args71))
            local args72 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args72))
            local args73 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args73))
            local args74 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args74))
            local args75 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args75))
            local args76 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args76))
            local args77 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args77))
            local args78 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args78))
            local args79 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args79))
            local args80 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args80))
            local args81 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args81))
            local args82 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args82))
            local args83 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args83))
            local args84 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args84))
            local args85 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args85))
            local args86 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args86))
            local args87 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args87))
            local args88 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args88))
            local args89 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args89))
            local args90 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args90))
            local args91 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args91))
            local args92 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args92))
            local args93 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args93))
            local args94 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args94))
            local args95 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args95))
            local args96 = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args96))
            local args97 = {
                [1] = "collectOrb",
                [2] = "Blue Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args97))
            local args98 = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args98))
            local args99 = {
                [1] = "collectOrb",
                [2] = "Yellow Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args99))
            local args100 = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args100))
            wait()
        end
    end)
end
end
else
    print("https://discord.gg/HGqAuUUU3Z")
end
