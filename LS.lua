getgenv().A_C = false;
getgenv().S = false;

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("DraWatX LS")

local a = w:CreateFolder("Auto")

a:Toggle("Sell",function(bool)
    getgenv().S = bool
    if bool then
        S()
    end
end)

a:Toggle("Click",function(bool)
    getgenv().A_C = bool
    if bool then
        A_C()
    end
end)

function S()
    spawn(function()
        while (getgenv().S == true)
        do
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"SellMuscle"})
            wait()
        end
    end)
end

function A_C()
    spawn(function()
        while (getgenv().A_C == true)
        do
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMuscle"})
            wait()
        end
    end)
end
