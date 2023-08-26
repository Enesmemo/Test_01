if game.PlaceId == 9031522337 then

    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

    local Window = OrionLib:MakeWindow({Name = "DraWatX RPGC", HidePremium = false, SaveConfig = true, ConfigFolder = "Win", IntroEnabled = false})

    MValue = ""
    getgenv().A_C = false;

    local ATab = Window:MakeTab({
	    Name = "Auto",
	    Icon = "rbxassetid://4483345998",
	    PremiumOnly = false
    })

    local MTab = Window:MakeTab({
	    Name = "Menus",
	    Icon = "rbxassetid://4483345998",
	    PremiumOnly = false
    })


    ATab:AddToggle({
	    Name = "Click",
	    Default = false,
	    Callback = function(Value)
		    getgenv().A_C = Value
            A_C()
	    end    
    })

    MTab:AddDropdown({
	    Name = "Dropdown",
	    Default = "None",
	    Options = {"Shop", "Quest"},
	    Callback = function(Value)
	        MValue = Value
	    end    
    })

    MTab:AddButton({
	Name = "Open",
	Callback = function()
            if string.find(MValue, "Quest") then
                game:GetService("ReplicatedStorage").Remotes.ClientEVENT:Fire("hideMainExcept", "ZoneQuest")
                game:GetService("ReplicatedStorage").Remotes.ClientEVENT:Fire("updateQuests","Home")
                game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript.Modules.QuestEvent:Fire("update", "Home")
                game:GetService("ReplicatedStorage").Remotes.actionFunctions:InvokeServer("getZoneQuests", "Home")
            end
  	end    
    })

    function A_C()
        spawn(function()
            while (getgenv().A_C == true) do
                local args = {[1] = "swing"}
                game:GetService("Players").LocalPlayer.Character.WeaponEvent:FireServer(unpack(args))
                wait()
            end
        end)
    end
end
