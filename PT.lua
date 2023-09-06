local localOyuncu = game.Players.LocalPlayer
local kamera = game.Workspace.CurrentCamera
local lowestHealthPlayer = nil
local lowestHealth = math.huge

getgenv().S_P = ""
getgenv().F_D = 0
getgenv().F_P = false;

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
    Text = "Following Distance",
    List = {"-7","-6","-5","-4","-3","-2","-1","0"},
    Flag = "Choosen2",
    Callback = function(v)
        getgenv().F_D = v
    end
})

Section:Toggle({
    Text = "Follow Player",
    Callback = function(b)
        if b then
            getgenv().F_P = b
            F_P()
        else
            getgenv().F_P = b
            F_P()
        end
    end
})

local label = Section:Label({
    Text = "",
    Color = Color3.fromRGB(255, 255, 255),
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
        local hedefOyuncu = game.Players:FindFirstChild(getgenv().S_P)

        if hedefOyuncu and hedefOyuncu.Character and hedefOyuncu.Character:FindFirstChild("Head") then
            local hedefKafa = hedefOyuncu.Character.Head
            local localKafa = localOyuncu.Character.Head

            local humanoidRootPart = localOyuncu.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart and getgenv().F_P then
                humanoidRootPart.CFrame = CFrame.new(hedefKafa.Position + Vector3.new(0, getgenv().F_D, 0), localKafa.Position)
            end
        end
        if hedefOyuncu and getgenv().F_P then
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

function UpdateLowestHealth()
    while true do
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
            local tamSayi = math.floor(lowestHealth)
            local playerString = "P: "..lowestHealthPlayer.. "H: "..tamSayi..
            label:Set({
                Text = playerString
            })
        end
    end
end

UpdateLowestHealth()

while true do
    UpdatePlayerNames()
    wait(30)
end
