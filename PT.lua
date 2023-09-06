local localOyuncu = game.Players.LocalPlayer
local kamera = game.Workspace.CurrentCamera

getgenv().S_P = ""
getgenv().L_H_P = ""
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

local dropdown1 = Section:Dropdown({
    Text = "Select Player",
    List = {},
    Flag = "Choosen1",
    Callback = function(s)
        getgenv().S_P = s
    end
})

local dropdown2 = Section:Dropdown({
    Text = "Select Distance",
    List = {"-7","-6","-5","-4","-3","-2","-1","0"},
    Flag = "Choosen2",
    Callback = function(v)
        getgenv().F_D = v
    end
})

Section:RadioButton({
    Text = "Targeting Mod",
    Options = {"Focus On Selected","Focus On Lowest Health","Off"},
    Callback = function(b)
        if b == "Focus On Selected" then
            getgenv().F_P = true
            getgenv().F_L_H = false
            F_P()
        end
        if b == "Focus On Lowest Health" then
            getgenv().F_L_H = true
            getgenv().F_P = false
            F_L_H()
        end
        if b == "Off" then
            getgenv().F_P = false
            getgenv().F_L_H = false
            F_P()
            F_L_H()
        end
    end
})

local label = Section:Label({
    Text = "Health Value Of All Players 100",
    Color = Color3.fromRGB(217, 97, 99),
    Tooltip = "The Player With The Lowest Health On The Server"
})

Tab:Select()

local function UpdatePlayerNames()
    local playerNames = {}
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Name ~= localOyuncu.Name then
            table.insert(playerNames, player.Name)
        end
    end
    dropdown1:Refresh({ List = playerNames })
end

function F_P()
    game:GetService("RunService").Heartbeat:Connect(function()
        UpdateLowestHealth()
        local hedefOyuncu = game.Players:FindFirstChild(getgenv().S_P)

        if hedefOyuncu and hedefOyuncu.Character and hedefOyuncu.Character:FindFirstChild("Head") then
            local hedefKafa = hedefOyuncu.Character.Head
            local localKafa = localOyuncu.Character.Head

            local humanoidRootPart = localOyuncu.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart and getgenv().F_P and getgenv().F_L_H == false then
                humanoidRootPart.CFrame = CFrame.new(hedefKafa.Position + Vector3.new(0, getgenv().F_D, 0), localKafa.Position)
            end
        end
        if hedefOyuncu and getgenv().F_P and getgenv().F_L_H == false then
            if hedefOyuncu.Character then
                kamera.CameraSubject = hedefOyuncu.Character.Humanoid
            else
                hedefOyuncu.CharacterAdded:Wait()
                kamera.CameraSubject = hedefOyuncu.Character.Humanoid
            end
        else
            kamera.CameraSubject = localOyuncu.Character.Humanoid
        end
        wait(3)
    end)
end

function UpdateLowestHealth()
    local lowestHealthPlayer = nil
    local lowestHealth = math.huge

    for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChild("Humanoid")
            if humanoid then
                local health = humanoid.Health
                if health > 0 and health < lowestHealth then
                    lowestHealth = health
                    lowestHealthPlayer = player
                end
            end
        end
    end
    if lowestHealthPlayer then
        if lowestHealthPlayer.Name ~= localOyuncu.Name then
            getgenv().L_H_P = lowestHealthPlayer.Name
            local tamSayi = math.floor(lowestHealth)
            local playerString = "N: " .. lowestHealthPlayer.Name .. " H: " .. tamSayi
            label:Set({
                Text = playerString,
                Color = Color3.fromRGB(217, 97, 99),
                Tooltip = "The Player With The Lowest Health On The Server"
            })
        end
    end
end

F_P()

function F_L_H()
    game:GetService("RunService").Heartbeat:Connect(function()
        local hedefOyuncu = game.Players:FindFirstChild(getgenv().L_H_P)

        if hedefOyuncu and hedefOyuncu.Character and hedefOyuncu.Character:FindFirstChild("Head") then
            local hedefKafa = hedefOyuncu.Character.Head
            local localKafa = localOyuncu.Character.Head

            local humanoidRootPart = localOyuncu.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart and getgenv().F_L_H and getgenv().F_P == false then
                humanoidRootPart.CFrame = CFrame.new(hedefKafa.Position + Vector3.new(0, getgenv().F_D, 0), localKafa.Position)
            end
        end
        if hedefOyuncu and getgenv().F_L_H and getgenv().F_P == false then
            if hedefOyuncu.Character then
                kamera.CameraSubject = hedefOyuncu.Character.Humanoid
            else
                hedefOyuncu.CharacterAdded:Wait()
                kamera.CameraSubject = hedefOyuncu.Character.Humanoid
            end
        else
            kamera.CameraSubject = localOyuncu.Character.Humanoid
        end
        wait(3)
    end)
end

while true do
    UpdatePlayerNames()
    wait(30)
end
