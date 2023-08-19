A_T = true;
while (A_T == true)
do
    local args = {[1] = 100}
    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(unpack(args))
    wait()
end
