getgenv().F_C = true;
while getgenv().F_C == true do
  game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
  wait()
end
