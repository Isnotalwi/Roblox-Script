if not game:IsLoaded() then game.Loaded:Wait() end
if game.PlaceId == 138828707916192 or game.PlaceId == 118985253111841 then
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
local Always = Window:NewTab("Event")
local Boss = Window:NewTab("Main")

local Logged = Home:AddSection("Information Account")
local Discord = Home:AddSection("Discord/Support")
local Bugs = Always:AddSection("Event")
local Main = Boss:AddSection("Main")

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

Bugs:AddButton("Event", "?", function()
 game:GetService('TeleportService'):Teleport(118985253111841, LocalPlayer)
end) 

Bugs:AddButton("Server Hop (If needs)", "?", function()
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

Main:AddToggle("Auto Bring Candy Cane", "Bring Sword",false,function(Dick) 
getgenv().CandyCane = Dick

while getgenv().CandyCane and task.wait() do
    task.spawn(function()
        pcall(function() 
            for i, v in pairs(workspace:GetDescendants()) do
                if v.Name:lower() == "candy cane" and v:IsA("Model") then
                    local player = game.Players.LocalPlayer

                    if player and player.Character and player.Character:FindFirstChildOfClass('Humanoid') then
                        local humanoid = player.Character:FindFirstChildOfClass('Humanoid')

                        if humanoid.SeatPart then
                            humanoid.Sit = false
                            task.wait(0.1)
                        end

                        task.wait()

                        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                        if humanoidRootPart then
                        
                            pcall(function()
                                if not v.PrimaryPart then
                                    v.PrimaryPart = v:FindFirstChildWhichIsA("BasePart")
                                end

                                if v.PrimaryPart then
                                    v:SetPrimaryPartCFrame(humanoidRootPart.CFrame)
                                else
                                  
                                end
                            end)
                        end
                    end
                end
            end
        end) 
    end)
end

end) 


-- Initialize state variables
local hitboxToggled = false
local hitboxSize = 40 

-- Add Toggle for Hitbox Boss
Main:AddToggle("Enable Hitbox", "Toggle hitbox modification", false, function(state)
    hitboxToggled = state 
    if hitboxToggled then
        sendNotification("Hitbox", "Hitbox Modification Enabled", 3)
    else
        sendNotification("Hitbox", "Hitbox Modification Disabled", 3)
    end
end)

-- Add Slider for Hitbox Size
Main:AddSlider("Hitbox Size", "Adjust the size of the hitbox", 1, 100, hitboxSize, false, function(value)
    hitboxSize = value 
    -- error("running 0 nil") 
end)

game:GetService('RunService').RenderStepped:Connect(function()
    if hitboxToggled then
        local warden = workspace:FindFirstChild("THE GLACIER WARDEN")
        if warden and warden:IsA("Model") and warden:FindFirstChild("Humanoid") then
            pcall(function()
                local humanoidRootPart = warden:FindFirstChild("HumanoidRootPart")
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


Bugs:AddButton("Fly GUI", "?", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end) 
end
