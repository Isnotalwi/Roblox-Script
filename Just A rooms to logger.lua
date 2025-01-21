-- UnGay Free Source Made alwi hub
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


local function sendNotification(title, message, delay)
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = title,
            Text = message,
            Icon = "http://www.roblox.com/asset/?id=92639750101948",
            Duration = delay,
        })
    end)
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


Main:AddToggle("Auto Compelety All Level", "Just A Error", false, function(LuaGay) 
getgenv().Floor = LuaGay
task.spawn(function()
    while getgenv().Floor and task.wait(0.1) do
      spawn(function()
    for _, descendant in ipairs(workspace:GetDescendants()) do
        if descendant:IsA("ClickDetector") then
            task.spawn(function()
                fireclickdetector(descendant)
            end)
        end
    end
end)
        pcall(function()
            local found = false
            for _, plot in pairs(workspace:WaitForChild("PlotSections"):GetChildren()) do
                local owner = plot:FindFirstChild("Owner")
                if owner and owner.Value == game:GetService("Players").LocalPlayer.Name then
                    local room = plot:FindFirstChild("Room")
                    if room then
                        local validPart = nil
                        for _, part in pairs(room:GetDescendants()) do
                            if part.Name == "Floor" then
                                validPart = part
                                break
                            end
                        end

                        if not validPart then
                            local spots = plot:FindFirstChild("Spots")
                            if spots then
                                for _, spot in pairs(spots:GetChildren()) do
                                    if spot.Name == "Floor" then
                                        validPart = spot
                                        break
                                    end
                                end
                            end
                        end

                        if validPart then
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = validPart.CFrame
                            found = true
                            return
                        end

                        local jail = room:FindFirstChild("Jail")
                        if jail then
                            local jailPart = jail:FindFirstChild("Part")
                            if jailPart then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = jailPart.CFrame
                                found = true
                                return
                            else
                                sendNotification("Error", "No Part found inside Jail", 5)
                            end
                        else
                            sendNotification("Error", "Jail not found in Room", 5)
                        end
                    else
                        sendNotification("Error", "Room not found in plot: " .. plot.Name, 5)
                    end
                end
            end

            if not found then
                sendNotification("Error", "No valid part or jail found!", 5)
            end
        end)
    end
end)
end) 
sendNotification("Alwi HuB Notice", "If No works or sum just server hop on home tabs thanks you!", 5)

playNotificationSound()
