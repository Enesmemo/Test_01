A_F = true;
while (A_F == true)
do
    local args = {
        [1] = "collectOrb",
        [2] = "Red Orb",
        [3] = "City"
    }

    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
    wait()
end
