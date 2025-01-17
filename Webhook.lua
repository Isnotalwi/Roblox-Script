if _G.Honey_Valley then
  warn("Script Is fucking Already running",0) 
    return
end

_G.Honey_Valley = true
local HttpService = game:GetService("HttpService")
local MarketplaceService = cloneref(game:GetService("MarketplaceService"))
local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

-- Webhook URL
local webhookUrl = "https://discord.com/api/webhooks/1318961945424166973/TBy_bcaVzjkMko3QO4WYK4gRMPlyMReyFn7Tt9jB9ZSObcVCaGnAzCrp8RjQinFbqdjY"

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

sendToWebhook()
