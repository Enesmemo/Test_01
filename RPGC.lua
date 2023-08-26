if game.PlaceId == 9031522337 then

    MValue = ""
    getgenv().A_C = false;

    if string.find(MValue, "Quest") then
        game:GetService("ReplicatedStorage").Remotes.ClientEVENT:Fire("hideMainExcept", "ZoneQuest")
        game:GetService("ReplicatedStorage").Remotes.ClientEVENT:Fire("updateQuests","Home")
        game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript.Modules.QuestEvent:Fire("update", "Home")
        game:GetService("ReplicatedStorage").Remotes.actionFunctions:InvokeServer("getZoneQuests", "Home")
    end

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
