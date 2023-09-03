local localPlayer = game.Players.LocalPlayer

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
    Flag = "Chosen",
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
        if player.Name ~= localPlayer.Name then
            table.insert(playerNames, player.Name)
        end
    end
    dropdown:Refresh({ List = playerNames })
end

function F_T()
    game:GetService("RunService").Heartbeat:Connect(function()
        local targetPlayer = game.Players:FindFirstChild(getgenv().S_P)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
            local targetHead = targetPlayer.Character.Head
            local localHead = localPlayer.Character.Head
            local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart and getgenv().F_T then
                humanoidRootPart.CFrame = CFrame.new(targetHead.Position + Vector3.new(0, -7, 0), localHead.Position)
            end
        end
        
        local camera = game.Workspace.CurrentCamera
        if targetPlayer and getgenv().F_T then
            if targetPlayer.Character then
                camera.CameraSubject = targetPlayer.Character.Humanoid
            else
                targetPlayer.CharacterAdded:Wait()
                camera.CameraSubject = targetPlayer.Character.Humanoid
            end
        else
            camera.CameraSubject = localPlayer.Character.Humanoid
        end
    end)
end

while true do
    UpdatePlayerNames()
    wait(30)
end
