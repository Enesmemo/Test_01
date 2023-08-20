getgenv().C_A_F = false;
getgenv().C_A_C = false;
getgenv().A_R = false;

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("DraWatX LOS") -- Creates the window

local b = w:CreateFolder("Farming")

local c = w:CreateFolder("Crystals")

b:Toggle("Auto Rebirth",function(bool)
    getgenv().A_R = bool
    if bool then
        A_R()
    end
end)

b:Toggle("City Auto Farm",function(bool)
    getgenv().C_A_F = bool
    if bool then
        C_A_F()
    end
end)

c:Toggle("City Crystal",function(bool)
    getgenv().C_A_C = bool
    if bool then
        C_A_C()
    end
end)

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
            wait()
        end
    end)
end
