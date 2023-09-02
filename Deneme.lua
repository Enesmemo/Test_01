local localPlayer = game.Players.LocalPlayer

getgenv().S_P = ""
getgenv().F_T = false;

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("DraWatX Test_01","Developer: DraWatX")

local Home = UI:addPage("Home",1,true,6)

local PLIST = {}

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PLIST,v.DisplayName)
end

Home:addDropdown("Select Target",PLIST,4,function(value)
    getgenv().S_P = value
end)

Home:addButton("ON/OFF Follow Target",function()
    if getgenv().F_T == false then
        getgenv().F_T = true
        F_T()
    else
        getgenv().F_T = false
        F_T()
    end
end)

function F_T()
    game:GetService("RunService").Heartbeat:Connect(function()
        local targetPlayer = game.Players:FindFirstChild(getgenv().S_P)
    
        if hedefOyuncu and hedefOyuncu.Character and hedefOyuncu.Character:FindFirstChild("Head") then
            local targetHead = targetPlayer.Character.Head
            local localHead = localPlayer.Character.Head

            local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart and getgenv().F_T then
                humanoidRootPart.CFrame = CFrame.new(targetHead.Position + Vector3.new(0, -8, 0), localHead.Position)
            end
        end
    end)
end
