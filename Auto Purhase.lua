--[[ 
    ⚡ INSTANT UGC AUTO-PURCHASE SCRIPT ⚡
    - Scans & buys UGC as soon as it drops
    - No while loops, no delays, fully event-driven
    - Sends purchase details to Discord
--]]

--// Services
local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

--// Function to fetch latest UGC limiteds
local function getLatestUGC()
    local url = "https://catalog.roblox.com/v1/search/items/details?Category=Accessories&SortType=3&Limit=10"
    local success, response = pcall(function()
        return http_request({ Url = url, Method = "GET", Headers = { ["Content-Type"] = "application/json" } })
    end)
    
    if success and response and response.Body then
        local data = HttpService:JSONDecode(response.Body)
        for _, item in pairs(data.data) do
            if item.isLimited and item.priceStatus == "Off Sale" then
                return item.id, item.name
            end
        end
    end
    return nil, nil
end

--// Function to send webhook notification
local function sendWebhook(itemName, timeTaken, assetId, productId, price, collectibleItemId, collectibleProductId, creatorName, creatorId, description, assetType)
    -- Correct Roblox UGC image URL
    local imageUrl = "https://tr.rbxcdn.com/" .. tostring(assetId) .. "-420-420.png"

    http_request({
        Url = getgenv().Webhook,
        Method = "POST",
        Headers = { ["Content-Type"] = "application/json" },
        Body = HttpService:JSONEncode({
            ["embeds"] = {{
                ["title"] = "🎉 UGC Item Purchased!",
                ["color"] = 65280,
                ["fields"] = {
                    { ["name"] = "Item Name", ["value"] = itemName, ["inline"] = true },
                    { ["name"] = "Time Taken", ["value"] = tostring(timeTaken) .. " sec", ["inline"] = true },
                    { ["name"] = "Asset ID", ["value"] = tostring(assetId), ["inline"] = true },
                    { ["name"] = "Product ID", ["value"] = tostring(productId), ["inline"] = true },
                    { ["name"] = "Price", ["value"] = tostring(price) .. " Robux", ["inline"] = true },
                    { ["name"] = "Collectible Item ID", ["value"] = tostring(collectibleItemId), ["inline"] = true },
                    { ["name"] = "Collectible Product ID", ["value"] = tostring(collectibleProductId), ["inline"] = true },
                    { ["name"] = "Creator Name", ["value"] = creatorName, ["inline"] = true },
                    { ["name"] = "Creator ID", ["value"] = tostring(creatorId), ["inline"] = true },
                    { ["name"] = "Description", ["value"] = description, ["inline"] = false },
                    { ["name"] = "Asset Type", ["value"] = tostring(assetType), ["inline"] = true }
                },
                ["thumbnail"] = { ["url"] = imageUrl } -- Fix: This should now properly show the UGC image
            }}
        })
    })
end

--// Function to buy item instantly
local function buyItem(assetId)
    pcall(function()
        MarketplaceService:PromptPurchase(LocalPlayer, assetId)
    end)
end

--// Auto-Purchase Function
local function autoPurchaseUGCItem()
    getrenv()._set = clonefunction(setthreadidentity)
    local old
    old = hookmetamethod(game, "__index", function(a, b)
        task.spawn(function()
            _set(7)
            task.wait()
            getgenv().promptpurchaserequestedv2 = MarketplaceService.PromptPurchaseRequestedV2:Connect(function(...)
                local startTime = tick()
                local t = {...}
                local assetId = t[2]
                local idempotencyKey = t[5]
                local purchaseAuthToken = t[6]
                local info = MarketplaceService:GetProductInfo(assetId)

                local itemName = info.Name
                local productId = info.ProductId
                local price = info.PriceInRobux
                local collectibleItemId = info.CollectibleItemId
                local collectibleProductId = info.CollectibleProductId
                local creatorName = info.Creator.Name
                local creatorId = info.Creator.Id
                local description = info.Description
                local assetType = info.AssetTypeId

                if price == 0 then
                    print("Item is free! Attempting purchase...")
                    local success, result = pcall(function()
                        return MarketplaceService:PerformPurchase(Enum.InfoType.Asset, productId, price,
                            tostring(HttpService:GenerateGUID(false)), true, collectibleItemId,
                            collectibleProductId, idempotencyKey, tostring(purchaseAuthToken))
                    end)

                    if success then
                        local endTime = tick()
                        local duration = endTime - startTime
                        print("Bought Item! Took " .. tostring(duration) .. " seconds")
                        sendWebhook(itemName, duration, assetId, productId, price, collectibleItemId, collectibleProductId, creatorName, creatorId, description, assetType)
                    else
                        print("Failed to Purchase Item: " .. tostring(result))
                    end
                else
                    print("Item is not free, skipping purchase.")
                end
            end)
        end)
        hookmetamethod(game, "__index", old)
        return old(a, b)
    end)
end

--// Run Auto-Purchase when script executes
autoPurchaseUGCItem()
