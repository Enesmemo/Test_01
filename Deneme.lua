local localOyuncu = game.Players.LocalPlayer

getgenv().S_P = ""
getgenv().F_T = false;

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("Deneme","Developer: DraWatX")

local Home = UI:addPage("Home",1,true,6)

PLIST = {}

while true do
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.DisplayName ~= localOyuncu.DisplayName then
            table.insert(PLIST,v.DisplayName)
        end
    end
    wait(10)
end

Home:addDropdown("Select Target",PLIST,4,function(value)
    getgenv().S_P = value
    print(getgenv().S_P)
end)

Home:addButton("On/Off Follow Target",function()
    if getgenv().F_T == false then
        getgenv().F_T = true
        print("On")
        F_T()
    else
        getgenv().F_T = false
        print("Off")
        F_T()
    end
end)

function F_T()
    game:GetService("RunService").Heartbeat:Connect(function()
        local hedefOyuncu = game.Players:FindFirstChild(getgenv().S_P)
    
        if hedefOyuncu and hedefOyuncu.Character and hedefOyuncu.Character:FindFirstChild("Head") then
            local hedefKafa = hedefOyuncu.Character.Head
            local localKafa = localOyuncu.Character.Head

            local humanoidRootPart = localOyuncu.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart and getgenv().F_T then
                humanoidRootPart.CFrame = CFrame.new(hedefKafa.Position + Vector3.new(0, -8, 0), localKafa.Position)
            end
        end

        local kamera = game.Workspace.CurrentCamera

        if hedefOyuncu and getgenv().F_T then
            if hedefOyuncu.Character then
                kamera.CameraSubject = hedefOyuncu.Character.Humanoid
            else
                hedefOyuncu.CharacterAdded:Wait()
                kamera.CameraSubject = hedefOyuncu.Character.Humanoid
            end
        else
            kamera.CameraSubject = localOyuncu.Character.Humanoid
        end
    end)
end
