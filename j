if game.PlaceId == 89338130344392 then
local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)

local range = 40040404040 

getgenv().firetools = true 

spawn(function()
    while firetools and task.wait() do
        pcall(function()
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")
                if tool and not game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):EquipTool(tool)
                end
            end
        end)
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    for _, targetPlayer in ipairs(game.Players:GetPlayers()) do 
        if targetPlayer ~= game.Players.LocalPlayer and targetPlayer.Character then
            local target = targetPlayer.Character
            if target:FindFirstChild("Humanoid") and target.Humanoid.Health > 0 and target:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer:DistanceFromCharacter(target.HumanoidRootPart.Position) <= range then
                local tool = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                if tool and tool:FindFirstChild("Handle") then
                    tool:Activate()
                    for _, part in ipairs(target:GetChildren()) do
                        if part:IsA("BasePart") then
                            firetouchinterest(tool.Handle, part, 0)
                            firetouchinterest(tool.Handle, part, 1)
                        end
                    end
                end
            end
        end
    end
end)
end
