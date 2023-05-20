-- THIS WILL NOT WORK AS THE WINTER EVENT HAS ENDED
getgenv().SnowflakeFarm = true
while getgenv().SnowflakeFarm == true do
    task.wait(2)
    local TweenService = game:GetService("TweenService")
    wait(2)
    local Tween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2), {CFrame = game:GetService("Workspace").Particles.Snowflakes.SnowflakePart.CFrame})
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = true
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity = Vector3.new()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").RotVelocity = Vector3.new()
    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Workspace").Particles.Snowflakes.SnowflakePart
    Tween:Play()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = false
    game:GetService("Workspace").CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    repeat until math.huge
end
