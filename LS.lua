getgenv().A_C = false;

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("DraWatX LS")

local a = w:CreateFolder("Auto")

a:Toggle("Click",function(bool)
    getgenv().A_C = bool
    if bool then
        A_C()
    end
end)

function A_C()
    spawn(function()
        while (getgenv().A_R == true)
        do
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMuscle"})
            wait()
        end
    end)
end
