local localOyuncu = game.Players.LocalPlayer
local kamera = game.Workspace.CurrentCamera

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

local dropdown = Section:Dropdown({
    Text = "Choose Player",
    List = {},
    Flag = "Choosen",
    Callback = function(p)
        getgenv().S_P = p
    end
})

Section:Slider({
    Text = "Following Distance",
    Default = 0,
    Minimum = -7,
    Maximum = 3,
    Flag = "SliderFlag",
    Callback = function(v)
        if getgenv().F_P == false then
            getgenv().F_D = v
        end
    end
})

Section:Toggle({
    Text = "Follow Player",
    Callback = function(b)
        if v then
            getgenv().F_P = b
            F_P()
        else
            getgenv().F_P = b
            F_P()
        end
    end
})

Tab:Select()

local function UpdatePlayerNames()
    local playerNames = {}
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Name ~= localOyuncu.Name then
            table.insert(playerNames, player.Name)
        end
    end
    dropdown:Refresh({ List = playerNames })
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

while true do
    UpdatePlayerNames()
    wait(30)
end
