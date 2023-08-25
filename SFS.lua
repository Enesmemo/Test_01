getgenv().A_C = true;

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("DraWatX SFS")

local a = w:CreateFolder("Auto")

local b = w:CreateFolder("Settings")

b:DestroyGui()

a:Toggle("Click",function(bool)
    getgenv().A_C = bool
    if bool then
        A_C()
    end
end)

function A_C()
  spawn(function)
    while getgenv().A_C == true do  
      game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
      wait()
    end
  end)
end
