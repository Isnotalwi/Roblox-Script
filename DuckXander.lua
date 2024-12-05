--~ Created by Redblue - Remade Alwi

--} Variables and Functions [DO NOT CHANGE]
local giftProximity = nil 
local gifts = {} 
local check_counter = 0 
local limsniper2 = false
local limid = nil
local updspeed = 0.3
local ClickingSpeed = 0
local x, y, m = 55, 65.5, 1
local Fuck = false
local Mother = false


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


giftSection:AddToggle("Auto Buy", "?", false, function(Open)
    Mother = Open
    spawn(function()
        while Mother do
            local purchaseContainer = game.CoreGui.PurchasePrompt.ProductPurchaseContainer.Animator
            if purchaseContainer:FindFirstChild("Prompt") and
                purchaseContainer.Prompt:FindFirstChild("AlertContents") and
                purchaseContainer.Prompt.AlertContents:FindFirstChild("Footer") and
                purchaseContainer.Prompt.AlertContents.Footer:FindFirstChild("Buttons") and
                purchaseContainer.Prompt.AlertContents.Footer.Buttons:FindFirstChild("2") and
                purchaseContainer.Prompt.AlertContents.Footer.Buttons[2]:FindFirstChild("ButtonContent") and
                purchaseContainer.Prompt.AlertContents.Footer.Buttons[2].ButtonContent:FindFirstChild("ButtonMiddleContent") and
                purchaseContainer.Prompt.AlertContents.Footer.Buttons[2].ButtonContent.ButtonMiddleContent:FindFirstChildOfClass("TextLabel") then

                local priceText = purchaseContainer.Prompt.AlertContents.Footer.Buttons[2].ButtonContent.ButtonMiddleContent:FindFirstChildOfClass("TextLabel").Text
                if tonumber(priceText) and tonumber(priceText) <= tonumber(m) then
                    local pos = purchaseContainer.Prompt.AlertContents.Footer.Buttons[2].AbsolutePosition
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(pos.X + tonumber(x), pos.Y + tonumber(y), 0, true, game, 1)
                    wait()
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(pos.X + tonumber(x), pos.Y + tonumber(y), 0, false, game, 1)
                    wait(0.1)
                end
            end
            wait(0.1) 
        end
    end)
end)

giftSection:AddToggle("Auto Close Error", "?", false, function(closed)
    Fuck = closed
    spawn(function()
        while Fuck do
            local purchaseContainer = game.CoreGui.PurchasePrompt.ProductPurchaseContainer.Animator
            local pp = purchaseContainer:FindFirstChild("Prompt")
            if pp and pp.AlertContents and pp.AlertContents.Footer and pp.AlertContents.Footer.Buttons and not pp.AlertContents.Footer.Buttons:FindFirstChild("2") then
                if pp.AlertContents.Footer.Buttons:FindFirstChild("1") then
                    local b1 = pp.AlertContents.Footer.Buttons[1].AbsolutePosition
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(b1.X + 55, b1.Y + 65.5, 0, true, game, 1)
                    wait() 
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(b1.X + 55, b1.Y + 65.5, 0, false, game, 1)
                end
            end
            wait(0.1) 
        end
    end)
end)

 

  
giftSection:AddButton("Auto Purchase Sniper [Works fluxus and Apple ware]", "?",function() 
-- Hey User Unknow If you see this sources u mean skid this script works to fluxus appleware and Delta old version

local cloneref = cloneref or function(...) return ... end

local TweenService = cloneref(game:GetService("TweenService")) 
local Players = cloneref(game:GetService("Players")) 
local player = Players.LocalPlayer

local function playNotificationSound()
    local soundService = game:GetService("SoundService")
    local notificationSound = Instance.new("Sound")
    
    notificationSound.SoundId = "rbxas7setid://8745692251"
    notificationSound.Volume = 0.5
    notificationSound.Parent = soundService

    notificationSound:Play()
end

local function createNotification(message)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = screenGui
    textLabel.Size = UDim2.new(0.5, 0, 0.1, 0)
    textLabel.Position = UDim2.new(0.25, 0, 0.9, 0)
    textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.Text = message
    textLabel.TextScaled = true
    textLabel.TextStrokeTransparency = 0.8
    textLabel.TextTransparency = 1

    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    local tweenIn = TweenService:Create(textLabel, tweenInfo, {TextTransparency = 0})
    local tweenOut = TweenService:Create(textLabel, tweenInfo, {TextTransparency = 1})

    tweenIn:Play()
    tweenIn.Completed:Connect(function()
        wait(5) 
        tweenOut:Play()
    
        tweenOut.Completed:Connect(function()
            screenGui:Destroy()
        end)
    end)
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

                createNotification("PurchaseAuthToken: " .. purchaseAuthToken)
                createNotification("IdempotencyKey: " .. idempotencyKey)
                createNotification("CollectibleItemId: " .. collectibleItemId)
                createNotification("CollectibleProductId: " .. collectibleProductId)
                createNotification("ProductId (should be 0): " .. productId)
                createNotification("Price: " .. price)
                playNotificationSound()
                local success, result = pcall(function()
                    return MarketplaceService:PerformPurchase(Enum.InfoType.Asset, productId, price,
                        tostring(game:GetService("HttpService"):GenerateGUID(false)), true, collectibleItemId,
                        collectibleProductId, idempotencyKey, tostring(purchaseAuthToken))
                end)

                if success then
                    createNotification("First Purchase Attempt")
                    for i, v in pairs(result) do
                        createNotification(i .. ": " .. v)
                    end
                    local endTime = tick()
                    local duration = endTime - startTime
                    createNotification("Bought Item! Took " .. tostring(duration) .. " seconds")
                else
                    createNotification("Failed to Purchase Item: " .. result)
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
    while getgenv().Hide do
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
