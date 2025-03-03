-- littlest shop v.1.1.py
if not game:IsLoaded() then game.Loaded:Wait() end
if game.PlaceId == 15536298749 then
local cloneref = cloneref or function(...) return ... end
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Imalwibest/Imalwibest/refs/heads/main/Fluxus%20Ui.lib"))()
local VirtualUser = cloneref(game:GetService("VirtualUser"))
local function playNotificationSound()
    local soundService = cloneref(game:GetService("SoundService")) 
    local notificationSound = Instance.new("Sound")
    
    notificationSound.SoundId = "rbxassetid://8745692251"
    notificationSound.Volume = 0.5
    notificationSound.Parent = soundService

    notificationSound:Play()
end



local function sendNotification(title, text, duration)
        game.StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 3,
        })
    end

local HWID




local MarketplaceService = cloneref(game:GetService("MarketplaceService")) 
local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local gameName = gameInfo.Name
local placeId = game.PlaceId

local executorName = identifyexecutor()
local Window = lib:CreateWindow(gameName)
local Home = Window:NewTab("Home")
local Naw = Window:NewTab("Auto Farm")
local Myhusband = Window:NewTab("Misc")

local Logged = Home:AddSection("Information Account")
local Discord = Home:AddSection("Discord/Support")
local Farm = Naw:AddSection("/Main")
local Codes = Naw:AddSection("/Code")
local Others = Myhusband:AddSection("Fps Booster")


Logged:AddButton("Game Name : " .. gameName, "Name Game Detected", function() end)
Logged:AddButton("Place ID Game : " .. placeId, "ID Game", function() end)
Logged:AddButton("Name Username : " .. game.Players.LocalPlayer.Name, "Your real username", function() end)
Logged:AddButton("Display Name : " .. game.Players.LocalPlayer.DisplayName, "Display Ur name", function() end)
Logged:AddButton("Your ID User Roblox : " .. game.Players.LocalPlayer.UserId, "", function() end)
Logged:AddButton("Age account : " .. game.Players.LocalPlayer.AccountAge .. " days", "How old Ur account", function() end)
Logged:AddButton("Executor : " .. executorName, "Checker ur API executor", function() end)

HWID = game:GetService("RbxAnalyticsService"):GetClientId()
Logged:AddButton("Hardware ID: " .. HWID, "Your device HWID", function() end)

Discord:AddButton("Discord Server", "Join our Discord", function()
    setclipboard("https://discord.gg/cpXUTmMXXd")
end)

Farm:AddToggle("Auto Collect Drop Coins", "Auto claim drop coins", false, function(Dumb) 
getgenv().Stealer = Dumb
task.spawn(function()
    while getgenv().Stealer and task.wait(0.1) do
        for i, v in pairs(workspace:GetDescendants()) do
            if v.Name:lower() == "coins" and v:IsA("BasePart") then
                local player = game.Players.LocalPlayer
                if player and player.Character then
                    local humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")
                    
                    local success, errorMessage = pcall(function()
                        v.CFrame = humanoidRootPart.CFrame
                    end)
                    
                    if not success then
                        playNotificationSound()
                    end
                end
            end
        end
    end
end) 
playNotificationSound()
end) 

Farm:AddToggle("Auto Farm Coins", "The best farms coins", false, function(Likes) 
getgenv().Farms = Likes
task.spawn(function()
    while getgenv().Farms and task.wait() do
        local args = { "ReturnBoat" }

        local rideService = game:GetService("ReplicatedStorage")
            :WaitForChild("Packages")
            :WaitForChild("_Index")
            :WaitForChild("sleitnick_knit@1.7.0")
            :WaitForChild("knit")
            :WaitForChild("Services")
            :WaitForChild("RideService")
            :WaitForChild("RF")

        local success, errorMessage = pcall(function()
            rideService.RequestRideStart:InvokeServer(unpack(args))
        end)

        if not success then
            warn("Failed to request ride: " .. errorMessage)
        end
    end
end)
playNotificationSound()
end)

Farm:AddToggle("Auto Claim Gitfs", "Auto Collect With Autonatic", false, function(Luaammor) 
getgenv().RiyuKitty = Luaammor
task.spawn(function() 
    while getgenv().RiyuKitty and task.wait() do
        for fuck = 1, 7 do
            pcall(function()
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.7.0"].knit.Services.SessionGiftService.RF.ClaimGift:InvokeServer(fuck)
            end)
        end
    end
end)
playNotificationSound()
end) 

Farm:AddButton("AntiAFK", "Auto Collect With Autonatic",function() 
sendNotification("AntiAfk", "Turned On", 10)

        game:GetService("Players").LocalPlayer.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
playNotificationSound()
end) 


local codes = {
    "CSDream",
    "PF",
    "PFLeaf",
    "PIPal2",
    "PIFun62",
    "PIGame2",
    "PICode2",
    "PSLake2",
    "PSSky72",
    "PSHero2",
    "PSSun",
    "PSStar2",
    "PSPlay2",
    "PSGift",
    "PIZoom"
}

local codeDisplayList = {}
for _, code in ipairs(codes) do
    table.insert(codeDisplayList, code)
end

Codes:AddDropdown("List all Code [Pets]", "Choose the code", codeDisplayList, codeDisplayList[1], function(selectedCodeDisplay)
    print("Selected Code:", selectedCodeDisplay)

    local selectedCode = selectedCodeDisplay

    if selectedCode then
        local args = {
            [1] = selectedCode
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("CodeService"):WaitForChild("RE"):WaitForChild("RequestCodeValidation"):FireServer(unpack(args))
    end
end)

local gems = {
    "PGTSurfz",
    "CSJolt2",
    "SPBold",
    "PTTune",
    "PTJump",
    "PTMix6",
    "PSFun3",
    "PSFree",
    "PSWish",
    "PSSmile",
    "PSJoy8",
    "PSCode",
    "PSCool62",
    "PSJoy82",
    "PSWave2",
    "PSBulbV"
}

local codeDisplayList = {}
for _, gem in ipairs(gems) do
    table.insert(codeDisplayList, gem)  
end

Codes:AddDropdown("List Code [Diamond]", "Choose the code", codeDisplayList, codeDisplayList[1], function(selectedCodeDisplay)
    print("Selected Code:", selectedCodeDisplay)

    local selectedCode = selectedCodeDisplay  

    if selectedCode then
        local args = {
            [1] = selectedCode
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("CodeService"):WaitForChild("RE"):WaitForChild("RequestCodeValidation"):FireServer(unpack(args))
    end
end)



local coins = {
    "PISun2",
    "PIBest2",
    "PSJazze",
    "PSJazz",
    "PSWave",
    "PSWord",
    "PSSong2",
    "PSGame52",
    "PSWord2",
    "PSDancer",
    "PSSmile2",
    "PSFree2"
}

local codeDisplayList = {}
for _, coin in ipairs(coins) do
    table.insert(codeDisplayList, coin)  
end


Codes:AddDropdown("List Code [Coins]", "Choose the code", codeDisplayList, codeDisplayList[1], function(selectedCoin)
    print("Selected Code:", selectedCoin)

    local selectedCode = selectedCoin  

    if selectedCode then
        local args = {
            [1] = selectedCode
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("CodeService"):WaitForChild("RE"):WaitForChild("RequestCodeValidation"):FireServer(unpack(args))
    end
end)

Others:AddButton("AntiLag","Booster Expirce",function() 
local decalsyeeted = true 
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
sethiddenproperty(l,"Technology",2)
sethiddenproperty(t,"Decoration",false)
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = 0
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(w:GetDescendants()) do
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted  then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.Graphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end
for i = 1,#l:GetChildren() do
    e=l:GetChildren()[i]
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
w.DescendantAdded:Connect(function(v)
    wait() 
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.ShirtGraphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end)
end) 
  

Others:AddToggle("Hide Player", "?",false,function(Why) 
getgenv().Hide = Why
task.spawn(function() 
    while getgenv().Hide and task.wait() do
        pcall(function() 
            for _, v in pairs(game.Players:GetPlayers()) do
                if v.Name ~= game.Players.LocalPlayer.Name and v.Character then
                    v.Character:Destroy()
                end
            end
        end)
    end
end)
end) 

Others:AddButton("Console", "Console",function() 
game:GetService("StarterGui"):SetCore("DevConsoleVisible",true)
end) 
Others:AddButton("Credit", ".",function() 
sendNotification("Alwi", "Made By Love", 10)
end) 
end
