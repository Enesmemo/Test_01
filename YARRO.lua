local localOyuncu = game:GetService("Players").LocalPlayer
local localOyuncular = game:GetService("Players")
local kamera = game.Workspace.CurrentCamera
local lowestHealth = math.huge
local lowestHealthPlayer = nil

getgenv().S_P = ""
getgenv().F_D = 0
getgenv().F_P = false;
getgenv().F_L_H = false;

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Shaman.lua'))()
local Flags = Library.Flags

local Window = Library:Window({
    Text = "DraWatX PT"
})

local Tab = Window:Tab({
    Text = "Player Targeting"
})

local Section = Tab:Section({
    Text = "Targeting Settings"
})

local dropdown = Section:Dropdown({
    Text = "Choose Player",
    List = {},
    Flag = "Choosen",
    Callback = function(s)
        if getgenv().F_L_H == false then
            getgenv().S_P = s
        end
    end
})

Section:Slider({
    Text = "Following Distance",
    Default = 0,
    Minimum = -7,
    Maximum = 3,
    Flag = "SliderFlag",
    Callback = function(v)
        if getgenv().F_P == false and getgenv().F_L_H == false then
            getgenv().F_D = v
        end
    end
})

Section:Toggle({
    Text = "Follow Player",
    Callback = function(b)
        if b then
            if getgenv().F_L_H == false then
                getgenv().F_P = b
                F_P()
            end
        else
            if getgenv().F_L_H == true then
                getgenv().F_P = getgenv().F_L_H
                F_P()
            end
        end
    end
})

Section:Toggle({
    Text = "Focus Lowest Health",
    Callback = function(b)
        if b then
            getgenv().F_L_H = b
            F_P()
        else
            getgenv().F_L_H = b
            F_P()
        end
    end
})

Tab:Select()

local function UpdatePlayerNames()
    local playerNames = {}
    for _, player in ipairs(localOyuncular:GetPlayers()) do
        if player.Name ~= localOyuncu.Name then
            table.insert(playerNames, player.Name)
        end
    end
    dropdown:Refresh({ List = playerNames })
end

function F_P()
    game:GetService("RunService").Heartbeat:Connect(function()
        if getgenv().F_L_H == false then
            local hedefOyuncu = game.Players:FindFirstChild(getgenv().S_P)
        else
            for i, player in ipairs(localOyuncular:GetPlayers()) do
                local character = player.Character
                if character then
                    local humanoid = character:FindFirstChild("Humanoid")
                    if humanoid then
                        local health = humanoid.Health
                        if health > 0 and health < lowestHealth then
                            lowestHealth = health
                            lowestHealthPlayer = player
                            if lowestHealthPlayer then
                                print("En düşük canlı oyuncu: " .. lowestHealthPlayer.Name .. " (" .. tostring(lowestHealth) .. ")")
                            end
                        end
                    end
                end
            end
        end
        if hedefOyuncu and hedefOyuncu.Character and hedefOyuncu.Character:FindFirstChild("Head") then
            local hedefKafa = hedefOyuncu.Character.Head
            local localKafa = localOyuncu.Character.Head

            local humanoidRootPart = localOyuncu.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart and getgenv().F_P getgenv().F_L_H then
                humanoidRootPart.CFrame = CFrame.new(hedefKafa.Position + Vector3.new(0, getgenv().F_D, 0), localKafa.Position)
            end
        end
        if hedefOyuncu and getgenv().F_P and getgenv().F_L_H then
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

while true do
    UpdatePlayerNames()
    wait(30)
end
