if game.PlaceId == 3652625463 then

getgenv().C = false;
getgenv().S = false;

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("DraWatX LOS")

local a = w:CreateFolder("Auto")

local d = w:CreateFolder("Settings")

a:Toggle("Sell",function(bool)
    getgenv().S = bool
    if bool then
        S()
    end
end)

a:Toggle("Click",function(bool)
    getgenv().C = bool
    if bool then
        C()
    end
end)

d:DestroyGui()

function S()
    spawn(function()
        while (getgenv().S == true)
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

function C()
    spawn(function()
        while (getgenv().C == true)
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
end
