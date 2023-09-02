local localPlayer = game.Players.LocalPlayer

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("Deneme","Developer: DraWatX")

local Home = UI:addPage("Home",1,true,6)

local PLIST = {}

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PLIST,v.DisplayName)
end

Home:addDropdown("Player Tracking",PLIST,4,function(value)
    game:GetService("RunService").Heartbeat:Connect(function()
        while true do
            local targetPlayer = game.Players:FindFirstChild(value)
        
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                local targetHead = targetPlayer.Character.Head
                local localHead = localPlayer.Character.Head

                local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    humanoidRootPart.CFrame = CFrame.new(targetHead.Position + Vector3.new(0, -8, 0), localHead.Position)
                end
            end
            wait()
        end
    end)
end)
