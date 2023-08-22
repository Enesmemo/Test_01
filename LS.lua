if game.PlaceId == 3652625463 then

    getgenv().S = false;
    getgenv().C = false;

    function S()
        spawn(function()
            while (getgenv().S == true) do
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"SellMuscle"})
                wait()
            end
        end)
    end

    function C()
        spawn(function()
            while (getgenv().C == true) do
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMuscle"})
                wait(.00000000000000000000000000000000000000000000000000000000000000000001)
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

    AutoTab:AddToggle({
        Name = "Click",
        Callback = function(Value)
            getgenv().C = Value
            C()
        end
    })

end
OrionLib:Init()
