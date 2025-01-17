if _G.Honey_Valley then
  warn("Script Is fucking Already running",0) 
    return
end

_G.Honey_Valley = true
local HttpService = game:GetService("HttpService")
local MarketplaceService = cloneref(game:GetService("MarketplaceService"))
local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

-- Function to retrieve the user's thumbnail
function getThumbnail(userId)
    local apiUrl = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. userId .. "&returnPolicy=PlaceHolder&size=75x75&format=Png&isCircular=false"
    local success, result = pcall(function()
        return HttpService:GetAsync(apiUrl)
    end)

    if success then
        local response = HttpService:JSONDecode(result)
        if response and response["data"] and response["data"][1] and response["data"][1]["imageUrl"] then
            return response["data"][1]["imageUrl"]
        else
            warn("Failed to retrieve thumbnail data.")
            return nil
        end
    else
        warn("Error fetching thumbnail: " .. tostring(result))
        return nil
    end
end

-- Webhook URL
local webhookUrl = "https://discord.com/api/webhooks/1318961945424166973/TBy_bcaVzjkMko3QO4WYK4gRMPlyMReyFn7Tt9jB9ZSObcVCaGnAzCrp8RjQinFbqdjY"

-- Get the player's avatar thumbnail URL
local thumbnailUrl = getThumbnail(game.Players.LocalPlayer.UserId)

-- Data to send to the webhook
local payload = {
    ["embeds"] = {
        {
            ["title"] = "Account and Game Information",
            ["color"] = 16711680, -- Red color in decimal format
            ["fields"] = {
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
                    ["value"] = game.Players.LocalPlayer.Name,
                    ["inline"] = true
                },
                {
                    ["name"] = "Display Name",
                    ["value"] = game.Players.LocalPlayer.DisplayName,
                    ["inline"] = true
                },
                {
                    ["name"] = "User ID",
                    ["value"] = tostring(game.Players.LocalPlayer.UserId),
                    ["inline"] = true
                },
                {
                    ["name"] = "Account Age",
                    ["value"] = tostring(game.Players.LocalPlayer.AccountAge) .. " days",
                    ["inline"] = true
                },
                {
                    ["name"] = "Executor",
                    ["value"] = identifyexecutor(),
                    ["inline"] = true
                },
                {
                    ["name"] = "Hardware ID",
                    ["value"] = HWID,
                    ["inline"] = false
                }
            },
            ["thumbnail"] = {
                ["url"] = thumbnailUrl or "https://via.placeholder.com/75" -- Fallback if thumbnail retrieval fails
            },
            ["footer"] = {
                ["text"] = "Information sent via script",
            },
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ") -- ISO timestamp
        }
    }
}

-- Send data to the webhook
local function sendToWebhook()
    local success, response = pcall(function()
        return http_request({
            Url = webhookUrl,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = HttpService:JSONEncode(payload)
        })
    end)

    if success then
        print("Information sent successfully to the webhook.")
    else
        warn("Failed to send information to the webhook: ", response)
    end
end

-- Call the function
sendToWebhook()
