if not game:IsLoaded() then game.Loaded:Wait() end
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
local Always = Window:NewTab("Main")

local Logged = Home:AddSection("Information Account")
local Discord = Home:AddSection("Discord/Support")
local Main = Always:AddSection("Main")
local Farm = Always:AddSection("Misc")

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
    setclipboard("https://discord.gg/vscePW7v")
end)

Discord:AddButton("Server Hop (If needs)", "?", function()
local gameapi = "https://games.roblox.com/v1/games/"
local _place = game.PlaceId
local _servers = gameapi .. _place .. "/servers/Public?sortOrder=Asc&limit=100"
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local queueonteleport = queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
function ListServers(cursor)
    local success, Raw = pcall(function()
        return game:HttpGet(_servers .. ((cursor and "&cursor=" .. cursor) or ""))
    end)

    if not success then
        warn("Failed to fetch server data: " .. Raw)
        return nil
    end

    return HttpService:JSONDecode(Raw)
end

local Server, Next
repeat
    local Servers = ListServers(Next)
    if not Servers then break end  

    Server = Servers.data[1]
    Next = Servers.nextPageCursor
until Server

if Server then
    if antikickonteleport then
        pcall(function()
            queueonteleport(
                'local kick; kick = hookmetamethod(game, "__namecall", function(obj, ...) local args = {...} local method = getnamecallmethod() if method == "Kick" then if args[1] then print("...") end return nil end return kick(obj, unpack(args)) end)'
            )
        end)
    end

    TeleportService:TeleportToPlaceInstance(_place, Server.id, Players.LocalPlayer)
end
end) 

local hitboxToggled = false
local hitboxSize = 40 


Main:AddToggle("Enable Hitbox" [Boss], "Toggle hitbox modification", false, function(state)
    hitboxToggled = state 
    if hitboxToggled then
        sendNotification("Hitbox", "Hitbox Modification Enabled", 3)
    else
        sendNotification("Hitbox", "Hitbox Modification Disabled", 3)
    end
end)

Main:AddSlider("Hitbox Size", "Adjust the size of the hitbox", 1, 100, hitboxSize, false, function(value)
    hitboxSize = value 
    -- error("running 0 nil") 
end)

game:GetService('RunService').RenderStepped:Connect(function()
    if hitboxToggled then
        local evilSnowman = game:GetService("Workspace")["Evil Snowman"]
        if evilSnowman and evilSnowman:IsA("Model") and evilSnowman:FindFirstChild("Humanoid") then
            pcall(function()
                local humanoidRootPart = evilSnowman:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    humanoidRootPart.Size = Vector3.new(hitboxSize, hitboxSize, hitboxSize)
                    humanoidRootPart.Transparency = 0.7
                    humanoidRootPart.BrickColor = BrickColor.new("Bright red")
                    humanoidRootPart.Material = Enum.Material.Neon
                    humanoidRootPart.CanCollide = false
                end
            end)
        end
    end
end)
Main:AddToggle("Auto Swing + Auto Equip Inventory", "Auto Using",false,function(Fire)
local Player = game.Players.LocalPlayer
getgenv().firetools = Fire
spawn(function()
    while getgenv().firetools and task.wait() do
        pcall(function()
            local Tool = Player.Backpack:FindFirstChildWhichIsA("Tool")
            if Tool and not Player.Character:FindFirstChildWhichIsA("Tool") then
                Player.Character:FindFirstChildOfClass("Humanoid"):EquipTool(Tool)
            end
            local equippedTool = Player.Character:FindFirstChildWhichIsA("Tool")
            if equippedTool then
                equippedTool:Activate()
            end
        end)
    end
end)
end)
Farm:AddToggle("Anti Fling", "OP",false,function(hey)
getgenv().Flung = true 
task.spawn(function()
    pcall(function()
        while getgenv().Flung and task.wait() do
            local playersService = game:GetService("Players") 
            for _, player in pairs(playersService:GetPlayers()) do
                if player ~= playersService.LocalPlayer and player.Character then
                    for _, part in pairs(player.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end
            end
        end
    end)
end)
end)
Main:AddToggle("Auto Build Snowman (Need using Auto Equip Inventory)", "OP",false,function(Sayang)
getgenv().Hello = Sayang
task.spawn(function()
    pcall(function()
        while getgenv().Hello do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SnowPile.Touch.CFrame
            wait(0.2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Snowman.CFrame
            wait(0.1)
        end
    end)
end)
end)


Farm:AddButton("Fly GUI", "?", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end) 

Farm:AddButton("Shop Snowman", "?", function()
game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-289, 24, -218)))
end)
