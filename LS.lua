if game.PlaceId == 3652625463 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "DraWatX LS", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

    local AutoTab = Window:MakeTab({
        Name = "Auto",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
end
