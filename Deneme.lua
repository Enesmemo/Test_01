local localPlayer = game.Players.LocalPlayer

getgenv().S_P = ""
getgenv().T_F = false;

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("Deneme","Developer: DraWatX")

local Home = UI:addPage("Home",1,true,6)

local PLIST = {}

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PLIST,v.DisplayName)
end

Home:addDropdown("Player Tracking",PLIST,4,function(value)
    getgenv().S_P = value
end)

function T_F()
    game:GetService("RunService").Heartbeat:Connect(function()
        local hedefOyuncu = game.Players:FindFirstChild(getgenv().S_P)
    
        if hedefOyuncu and hedefOyuncu.Character and hedefOyuncu.Character:FindFirstChild("Head") then
            local hedefKafa = hedefOyuncu.Character.Head
            local localKafa = localOyuncu.Character.Head

            local humanoidRootPart = localOyuncu.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart and getgenv().T_F then
                humanoidRootPart.CFrame = CFrame.new(hedefKafa.Position + Vector3.new(0, -8, 0), localKafa.Position)
            end
        end
    end)
end
