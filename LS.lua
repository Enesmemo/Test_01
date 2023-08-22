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
