local localOyuncu = game.Players.LocalPlayer

getgenv().S_P = ""
getgenv().F_T = false;

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Shaman.lua'))()
local Flags = Library.Flags

local Window = Library:Window({
    Text = "Player Targeting"
})

local Tab = Window:Tab({
    Text = "Home"
})

local Section = Tab:Section({
    Text = "Targeting Settings"
})

local dropdown = Section:Dropdown({
    Text = "Player Selection",
    List = {},
    Flag = "Choosen",
    Callback = function(t)
        getgenv().S_P = t
    end
})

Section:Toggle({
    Text = "Follow Target",
    Callback = function(v)
        if v then
            getgenv().F_T = v
            F_T()
        else
            getgenv().F_T = v
            F_T()
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

function F_T()
    game:GetService("RunService").Heartbeat:Connect(function()
        local hedefOyuncu = game.Players:FindFirstChild(getgenv().S_P)
    
        if hedefOyuncu and hedefOyuncu.Character and hedefOyuncu.Character:FindFirstChild("Head") then
            local hedefKafa = hedefOyuncu.Character.Head
            local localKafa = localOyuncu.Character.Head

            local humanoidRootPart = localOyuncu.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart and getgenv().F_T then
                humanoidRootPart.CFrame = CFrame.new(hedefKafa.Position + Vector3.new(0, -6.5, 0), localKafa.Position)
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

while true do
    UpdatePlayerNames()
    wait(30)
end
