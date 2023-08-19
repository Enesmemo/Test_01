A_F = true;
while (A_F == true)
do
    local args = {
        [1] = "collectOrb",
        [2] = "Red Orb",
        [3] = "City"
    }
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
    local args2 = {
        [1] = "collectOrb",
        [2] = "Blue Orb",
        [3] = "City"
    }
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args2))
    local args3 = {
        [1] = "collectOrb",
        [2] = "Orange Orb",
        [3] = "City"
    }
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args3))
    local args4 = {
        [1] = "collectOrb",
        [2] = "Yellow Orb",
        [3] = "City"
    }
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args4))
    local args5 = {
        [1] = "collectOrb",
        [2] = "Gem",
        [3] = "City"
    }
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args5))
    wait()
end
