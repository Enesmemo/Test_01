if game.PlaceId == 3652625463 then

    getgenv().S = false;

    function S()
        spawn(function()
            while (getgenv().C_A == true) do
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"SellMuscle"})
            end
        end)
    end
    
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "DraWatX LS", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

    local AutoTab = Window:MakeTab({
        Name = "Auto",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    AutoTab:AddToggle({
        Name = "Sell",
        Callback = function(Value)
            getgenv().S = Value
            S()
        end
    })
end
OrionLib:Init()
