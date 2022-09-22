local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character = nil
game.Players.LocalPlayer.Character = workspace[game.Players.LocalPlayer.Name]
wait(2.3)
for _,v in ipairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
    if v:IsA("Motor6D") and tostring(v) ~= "Neck" then
        local n = v.Parent
        v:Destroy(); n.CFrame = CFrame.new(9e9, 300000, 9e9); task.wait(0/1)
    end
end
wait(2.5)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos

game.Players.LocalPlayer.CharacterAdded:Wait():WaitForChild('HumanoidRootPart')['CFrame'] = pos
