--~ Created by Redblue - Remade Alwi

--} Variables and Functions [DO NOT CHANGE]
local giftProximity = nil 
local gifts = {} 
local check_counter = 0 
local limsniper2 = false
local limid = nil
local updspeed = 0.3
local autoPurchaseEnabled = false

-- Populate gifts list
for i, v in ipairs(workspace:GetDescendants()) do
    if v:IsA("ProximityPrompt") and v.Parent:IsA("MeshPart") then
        table.insert(gifts, v.ActionText)
    end
end

-- Utility Functions
local function findGift(name)
    for i, v in ipairs(workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") and v.ActionText == name then
            return v
        end
    end
    return nil 
end

local function notify(header, text, duration)
    task.spawn(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = header;
            Text = text;
            Duration = duration;
        })
    end)
end

notify("Thanks for Executing", "Check console when sniping to see progress!", 10)
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Imalwibest/Imalwibest/refs/heads/main/Fluxus%20Ui.lib"))()
local window = lib:CreateWindow("Alwi Hub | Ducks fuckers") 
local giftTab = window:NewTab("Gift")

local giftSection = giftTab:AddSection("Gift Options")
local Others = giftTab:AddSection("Misc")

giftSection:AddDropdown("Gift Items List", "Select a gift from the list", gifts, false, function(selectedGift)
    giftProximity = findGift(selectedGift)
    if giftProximity then
        notify("Found Gift", "Found gift named: " .. giftProximity.ActionText, 5)
    else
        notify("Gift Not Found", "The selected gift could not be found.", 5)
    end
end)

giftSection:AddButton("Teleport to Gift", "Teleport to the selected gift", function()
    if giftProximity then
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character:PivotTo(giftProximity.Parent.CFrame)
            notify("Teleported", "Teleported to gift: " .. giftProximity.ActionText, 5)
        else
            notify("Error", "Local Player Character could not be found.", 5)
        end
    else
        notify("Gift Not Found", "The selected gift could not be found.", 5)
    end
end)

giftSection:AddTextBox("Gift's Item ID", "Enter the gift item ID", "Input ID", "", function(yet)
    limid = tostring(yet)
    local success, productInfo = pcall(function()
        return game:GetService("MarketplaceService"):GetProductInfo(limid)
    end)
    if success then
        notify("Gift Item Information", "Inputted Gift Name: " .. productInfo.Name, 7)
    else
        notify("Error", "Failed to fetch item info for ID: " .. limid, 5)
    end
end)

giftSection:AddSlider("Update Speed [0.3 Best]", "Adjust the update speed", 0.3, 5, 0.3, true, function(value)
    updspeed = tonumber(value) or 0.3
 end) 

giftSection:AddToggle("Enable Sniper", "Toggle the gift sniping functionality", false, function(bool)
    limsniper2 = bool
    check_counter = 0
    local cancelled = false
    if limsniper2 then
        task.spawn(function()
            while task.wait(updspeed) and limsniper2 and not cancelled do
                pcall(function()
                    if limid then
                        local success, giftInfo = pcall(function()
                            return game:GetService("MarketplaceService"):GetProductInfo(limid)
                        end)
                        if success and giftInfo.IsForSale then
                            for _ = 1, 4 do
                                fireproximityprompt(giftProximity)
                                task.wait(5)
                            end
                            notify("Gift Item On Sale", "Buy that item before it goes out of stock!", 5)
                            check_counter = 0
                            cancelled = true
                        else
                            print("Checking... Count: " .. tostring(check_counter))
                            check_counter = check_counter + 1
                        end
                    else
                        print("No Limited ID specified.")
                    end
                end)
            end
        end)
    end
end)

  
giftSection:AddButton("Auto Purchase Sniper [Works fluxus and Apple ware]", "?",function() 
local cloneref = cloneref or function(...) return ... end

local TweenService = cloneref(game:GetService("TweenService")) 
local Players = cloneref(game:GetService("Players")) 
local player = Players.LocalPlayer

-- Replaced createNotification with warn() function
local function createNotification(message)
    warn(message)
end

getrenv().Visit = cloneref(game:GetService("Visit"))
getrenv().MarketplaceService = cloneref(game:GetService("MarketplaceService"))
getrenv().HttpRbxApiService = cloneref(game:GetService("HttpRbxApiService"))
getrenv().HttpService = cloneref(game:GetService("HttpService"))
local ContentProvider = cloneref(game:GetService("ContentProvider"))
local RunService = cloneref(game:GetService("RunService"))
local Stats = cloneref(game:GetService("Stats"))
local Players = cloneref(game:GetService("Players"))
local NetworkClient = cloneref(game:GetService("NetworkClient"))

local function autoPurchaseUGCItem()
    getrenv()._set = clonefunction(setthreadidentity)
    local old
    old = hookmetamethod(game, "__index", function(a, b)
        task.spawn(function()
            _set(7)
            task.wait()
            getgenv().promptpurchaserequestedv2 = MarketplaceService.PromptPurchaseRequestedV2:Connect(function(...)
                createNotification("Prompt Detected: Attempting to purchase the UGC item...")
                local startTime = tick()
                local t = {...}
                local assetId = t[2]
                local idempotencyKey = t[5]
                local purchaseAuthToken = t[6]
                local info = MarketplaceService:GetProductInfo(assetId)
                local productId = info.ProductId
                local price = info.PriceInRobux
                local collectibleItemId = info.CollectibleItemId
                local collectibleProductId = info.CollectibleProductId

                createNotification("PurchaseAuthToken: " .. tostring(purchaseAuthToken))
                createNotification("IdempotencyKey: " .. tostring(idempotencyKey))
                createNotification("CollectibleItemId: " .. tostring(collectibleItemId))
                createNotification("CollectibleProductId: " .. tostring(collectibleProductId))
                createNotification("ProductId (should be 0): " .. tostring(productId))
                createNotification("Price: " .. tostring(price))
                local success, result = pcall(function()
                    return MarketplaceService:PerformPurchase(Enum.InfoType.Asset, productId, price,
                        tostring(game:GetService("HttpService"):GenerateGUID(false)), true, collectibleItemId,
                        collectibleProductId, idempotencyKey, tostring(purchaseAuthToken))
                end)

                if success then
                    createNotification("First Purchase Attempt")
                    for i, v in pairs(result) do
                        createNotification(i .. ": " .. tostring(v)) -- Ensure v is a string
                    end
                    local endTime = tick()
                    local duration = endTime - startTime
                    createNotification("Bought Item! Took " .. tostring(duration) .. " seconds")
                    game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
                else
                    createNotification("Failed to Purchase Item: " .. tostring(result))
                end
            end)
        end)
        hookmetamethod(game, "__index", old)
        return old(a, b)
    end)
end
autoPurchaseUGCItem()
end) 


Others:AddToggle("Hide Player", "?",false,function(Why) 
getgenv().Hide = Why
task.spawn(function() 
    while getgenv().Hide and task.wait(5) do
        pcall(function() 
            for _, v in pairs(game.Players:GetPlayers()) do
                if v.Name ~= game.Players.LocalPlayer.Name and v.Character then
                    v.Character:Destroy()
                end
            end
        end)
    end
end)
end) 

Others:AddButton("Console", "Console",function() 
game:GetService("StarterGui"):SetCore("DevConsoleVisible",true)
end) 