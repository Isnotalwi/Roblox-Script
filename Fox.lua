local skidmyway1 = Instance.new("BindableFunction")
function skidmyway1.OnInvoke(response)
    if response == "Yes" then
        setclipboard("https://discord.gg/weBKT6ErZf")
        
        for i = 1, 100 do
    local jumpscearObj = game:GetService("Workspace"):FindFirstChild("jumpscear" .. i)
    
    if jumpscearObj then
        local espGui = Instance.new("BillboardGui")
        espGui.Parent = jumpscearObj
        espGui.Adornee = jumpscearObj
        espGui.Size = UDim2.new(0, 200, 0, 50)
        espGui.StudsOffset = Vector3.new(0, 5, 0)
        
        local label = Instance.new("TextLabel")
        label.Parent = espGui
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.Text = "jumpscear" .. i
        label.TextColor3 = Color3.fromRGB(255, 0, 0)
        label.TextStrokeTransparency = 0.5
        label.TextSize = 20
        label.TextXAlignment = Enum.TextXAlignment.Center
        label.TextYAlignment = Enum.TextYAlignment.Center
        label.Font = Enum.Font.GothamBold
    else
        print("jumpscear" .. i .. " does not exist.")
    end
end


    elseif response == "No" then
        game:Shutdown() 
    end
end

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "NOTICE!";
    Text = "Hey! Do u want ESP All Jump Srace?";
    Duration = math.huge;
    Button1 = "Yes";
    Button2 = "No";
    Icon = "rbxassetid://92639750101948"; 
    Callback = skidmyway1;
})


game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "NOTICE!";
    Text = "Hey! Be Carefull!";
    Duration = math.huge;
    Button1 = "Okay!";
    Button2 = "GO AWAY";
    Icon = "rbxassetid://92639750101948"; 
    Callback = skiddjdkkdy1;
})
