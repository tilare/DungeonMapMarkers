-- Marker data: { continent, zoneID, x, y, name, type, info, Atlas ID }
local points = {
    -- Kalimdor Dungeons
    {1, 2, 0.123, 0.128, "Blackfathom Deeps", "dungeon", "24-32", 2},
    {1, 23, 0.66, 0.49, "Black Morass", "dungeon", "60", 1},
    {1, 2, 0.51, 0.78, "Crescent Grove", "dungeon", "32-38", 3},
    {1, 12, 0.648, 0.303, "Dire Maul - East", "dungeon", "55-58", 4},
    {1, 12, 0.624, 0.249, "Dire Maul - North", "dungeon", "57-60", 5},
    {1, 12, 0.604, 0.311, "Dire Maul - West", "dungeon", "57-60", 6},
    {1, 8, 0.29, 0.629, "Maraudon", "dungeon", "46-55", 8},
    {1, 20, 0.53, 0.486, "Ragefire Chasm", "dungeon", "13-18", 10},
    {1, 26, 0.491, 0.896, "Razorfen Downs", "dungeon", "37-46", 11},
    {1, 26, 0.431, 0.863, "Razorfen Kraul", "dungeon", "29-38", 12},
    {1, 26, 0.472, 0.327, "Wailing Caverns", "dungeon", "17-24", 15},
    {1, 23, 0.389, 0.184, "Zul'Farrak", "dungeon", "44-54", 16},
	-- Kalimdor Raids
	{1, 15, 0.207, 0.592, "Emerald Sanctum", "raid", "60", 7},
	{1, 10, 0.53, 0.76, "Onyxia's Lair", "raid", "60", 9},
	{1, 21, 0.296, 0.960, "Ruins of Ahn'Qiraj", "raid", "60", 13},
	{1, 21, 0.282, 0.956, "Temple of Ahn'Qiraj", "raid", "60", 14},
	-- Kalimdor World Bosses
	{1, 3, 0.535, 0.816, "Azuregos", "worldboss", "60", nil},
	{1, 3, 0.69, 0.094, "Cla'ckora", "worldboss", "60", nil},
	{1, 8, 0.82, 0.80, "Concavius", "worldboss", "60"},
	{1, 15, 0.336, 0.398, "Father Lycan", "worldboss", "60", nil}, -- maybe coords need tweaking
	{1, 23, 0.361, 0.762, "Ostarius", "worldboss", "60", nil},
	{1, 2, 0.937, 0.355, "Emerald Dragon - Spawn Point 1 of 4", "worldboss", "60", nil},
	{1, 12, 0.512, 0.108, "Emerald Dragon - Spawn Point 2 of 4", "worldboss", "60", nil},
    -- Kalimdor Transport
    {1, 9, 0.512, 0.135, "Zeppelins to UC & Grom'Gol", "zepp", "Horde", nil},  -- horde
    {1, 9, 0.415, 0.184, "Zeppelins to TB & Kargath", "zepp", "Horde", nil},   -- horde
    {1, 28, 0.165, 0.230, "Zeppelin to Orgrimmar", "zepp", "Horde", nil},  -- horde
    {1, 9, 0.598, 0.236, "Boat to Revantusk Village ", "boat", "Horde", nil},  -- horde
    {1, 26, 0.636, 0.389, "Boat to Booty Bay", "boat", "Neutral", nil},  -- neutral
	{1, 6, 0.324, 0.44, "Boat to Stormwind", "boat", "Alliance", nil}, -- alliance
	{1, 6, 0.304, 0.41, "Boat to Alah'Thalas", "boat", "Alliance", nil},  -- alliance
	{1, 6, 0.333, 0.399, "Boat to Rut'Theran Village", "boat", "Alliance", nil}, -- alliance
	{1, 10, 0.718, 0.566, "Boat to Menethil Harbor", "boat", "Alliance", nil}, -- alliance
	{1, 12, 0.311, 0.395, "Boat to Forgotten Coast", "boat", "Alliance", nil}, -- alliance
	{1, 12, 0.431, 0.428, "Boat to Sardor Isle", "boat", "Alliance", nil}, -- alliance
	{1, 25, 0.552, 0.949, "Boat to Auberdine", "boat", "Alliance", nil}, -- alliance
    -- Eastern Kingdoms Dungeons
    {2, 23, 0.371, 0.857, "Blackrock Depths", "dungeon", "52-60", 1},
	{2, 7, 0.328, 0.362, "Blackrock Depths", "dungeon", "52-60", 1},
    {2, 35, 0.423, 0.726, "The Deadmines", "dungeon", "17-24", 3},
    {2, 14, 0.30, 0.27, "Gilneas City", "dungeon", "43", 4},
    {2, 9, 0.248, 0.337, "Gnomeregan", "dungeon", "29-38", 5},
    {2, 7, 0.95, 0.53, "Hateforge Quarry", "dungeon", "52-60", 6},
    {2, 8, 0.45, 0.75, "Karazhan Crypt", "dungeon", "58-60", 7},
    {2, 7, 0.321, 0.386, "Lower Blackrock Spire", "dungeon", "55-60", 8},
	{2, 23, 0.364, 0.879, "Lower Blackrock Spire", "dungeon", "55-60", 8},
    {2, 31, 0.869, 0.323, "Scarlet Monastery - Armory", "dungeon", "32-42", 12}, 
    {2, 31, 0.862, 0.295, "Scarlet Monastery - Cathedral", "dungeon", "35-45", 13}, 
    {2, 31, 0.839, 0.283, "Scarlet Monastery - Graveyard", "dungeon", "26-36", 14},
    {2, 31, 0.850, 0.338, "Scarlet Monastery - Library", "dungeon", "29-39", 15},  -- atlasID for Armory, Cath, GY and Lib are 13, 14, 15
    {2, 34, 0.69, 0.74, "Scholomance", "dungeon", "58-60", 16},
    {2, 24, 0.44, 0.67, "Shadowfang Keep", "dungeon", "22-30", 17},
    {2, 25, 0.51, 0.675, "The Stockade", "dungeon", "24-31", 18},
    {2, 25, 0.63, 0.58, "Stormwind Vault", "dungeon", "60", 19},
    {2, 12, 0.29, 0.61, "Stormwind Vault - Horde Entrance", "dungeon", "60", 19},
    {2, 11, 0.31, 0.14, "Stratholme", "dungeon", "58-60", 20},
    {2, 11, 0.47, 0.24, "Stratholme - Back Gate", "dungeon", "58-60", 20},
    {2, 27, 0.69, 0.55, "The Sunken Temple", "dungeon", "50-60", 21},
    {2, 4, 0.429, 0.130, "Uldaman - Main Entrance", "dungeon", "41-51", 22},
    {2, 4, 0.657, 0.438, "Uldaman - Back Entrance", "dungeon", "41-51", 22},
    {2, 7, 0.312, 0.365, "Upper Blackrock Spire", "dungeon", "55-60", 23},
	{2, 23, 0.355, 0.855, "Upper Blackrock Spire", "dungeon", "55-60", 23},
	-- Eastern Kingdoms Raids
	{2, 23, 0.332, 0.851, "Blackwing Lair", "raid", "60", 2},
	{2, 7, 0.273, 0.363, "Blackwing Lair", "raid", "60", 2},
	{2, 8, 0.46, 0.70, "Lower Karazhan Halls", "raid", "58-60", 9},
	{2, 23, 0.336, 0.879, "Molten Core", "raid", "60", 10},
	{2, 7, 0.273, 0.387, "Molten Core", "raid", "60", 10},
	{2, 11, 0.40, 0.28, "Naxxramas", "raid", "60", 11},
	{2, 8, 0.442, 0.719, "Upper Karazhan Halls", "raid", "60", nil}, -- needs Atlas page
	{2, 26, 0.53, 0.18, "Zul'Gurub", "raid", "60", 24},
	-- Eastern Kingdoms World Bosses
	{2, 8, 0.471, 0.751, "Dark Reaver of Karazhan", "worldboss", "60", nil},
	{2, 10, 0.465, 0.357, "Emerald Dragon - Spawn Point 3 of 4", "worldboss", "60", nil},
	{2, 30, 0.632, 0.217, "Emerald Dragon - Spawn Point 4 of 4", "worldboss", "60", nil},
	{2, 6, 0.36, 0.753, "Lord Kazzak", "worldboss", "60", 7},
	{2, 11, 0.082, 0.38, "Nerubian Overseer", "worldboss", "60", nil},
	-- Eastern Kingdoms Transport
	{2, 25, 0.694, 0.294, "Tram to Ironforge", "tram", "Alliance", nil},  -- alliance
	{2, 17, 0.762, 0.511, "Tram to Stormwind", "tram", "Alliance", nil},  -- alliance
	{2, 30, 0.812, 0.794, "Boat to Sparkwater Port", "boat", "Horde", nil}, -- horde
	{2, 36, 0.068, 0.613, "Boat to Theramore Isle", "boat", "Alliance", nil},  -- alliance
	{2, 25, 0.218, 0.563, "Boat to Auberdine", "boat", "Alliance", nil}, -- alliance
	{2, 26, 0.257, 0.73, "Boat to Ratchet", "boat", "Neutral", nil}, -- neutral
	{2, 31, 0.616, 0.571, "Zeppelins to Orgrimmar & Grom'Gol", "zepp", "Horde", nil}, -- horde
	{2, 26, 0.312, 0.298, "Zeppelins to UC & Orgrimmar", "zepp", "Horde", nil}, -- Horde
	{2, 4, 0.075, 0.480, "Zeppelin to Orgrimmar", "zepp", "Horde",  nil}, -- Horde
	{2, 1, 0.531, 0.047, "Boat to Auberdine", "boat", "Alliance", nil}, -- alliance
    -- Mailboxes (used https://database.turtle-wow.org/?search=mailbox to find locations)
    -- Alliance Mailbox
    {2,36,0.108,0.597, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,36,0.357,0.628, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,36,0.491,0.612, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,25,0.400,0.844, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,25,0.542,0.666, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,25,0.710,0.410, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,12,0.429,0.655, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,12,0.480,0.418, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,16,0.426,0.534, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,16,0.504,0.587, "Alliance Mailbox", "mail", "Alliance", nil},
    {1,10,0.659,0.453, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,35,0.531,0.533, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,20,0.264,0.465, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,24,0.676,0.827, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,11,0.809,0.585, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,6,0.640,0.192, "Alliance Mailbox", "mail", "Alliance", nil},
    {2,10,0.737,0.461, "Alliance Mailbox", "mail", "Alliance", nil},
    -- Carved Mailbox
    {1,26,0.451,0.587, "Carved Mailbox", "mail", "Horde", nil},
    {1,12,0.511,0.613, "Carved Mailbox", "mail", "Horde", nil},
    {1,11,0.348,0.530, "Carved Mailbox", "mail", "Horde", nil},
    {1,27,0.458,0.510, "Carved Mailbox", "mail", "Horde", nil},
    {1,22,0.480,0.612, "Carved Mailbox", "mail", "Horde", nil},
    -- Creaking Mailbox
    {2,10,0.190,0.562, "Creaking Mailbox", "mail", "Horde", nil},
    {2,10,0.321,0.490, "Creaking Mailbox", "mail", "Horde", nil},
    {2,34,0.807,0.631, "Creaking Mailbox", "mail", "Horde", nil},
    {2,31,0.859,0.579, "Creaking Mailbox", "mail", "Horde", nil},
    -- Damaged Mailbox
    {2,33,0.576,0.273, "Damaged Mailbox", "mail", "Horde", nil},
    {2,33,0.726,0.305, "Damaged Mailbox", "mail", "Horde", nil},
    {2,33,0.682,0.383, "Damaged Mailbox", "mail", "Horde", nil},
    {2,33,0.595,0.578, "Damaged Mailbox", "mail", "Horde", nil},
    {2,33,0.752,0.539, "Damaged Mailbox", "mail", "Horde", nil},
    {2,31,0.315,0.660, "Damaged Mailbox", "mail", "Horde", nil},
    -- Dwarven Mailbox
    {2,17,0.209,0.523, "Dwarven Mailbox", "mail", "Alliance", nil},
    {2,17,0.332,0.646, "Dwarven Mailbox", "mail", "Alliance", nil},
    {2,17,0.713,0.720, "Dwarven Mailbox", "mail", "Alliance", nil},
    {2,9,0.470,0.526, "Dwarven Mailbox", "mail", "Alliance", nil},
    {2,9,0.290,0.698, "Dwarven Mailbox", "mail", "Alliance", nil},
    {2,2,0.810,0.520, "Dwarven Mailbox", "mail", "Alliance", nil},
    {2,19,0.248,0.447, "Dwarven Mailbox", "mail", "Alliance", nil},
    {2,3,0.904,0.719, "Dwarven Mailbox", "mail", "Alliance", nil},
    {2,30,0.140,0.457, "Dwarven Mailbox", "mail", "Alliance", nil},
    {2,3,0.904,0.719, "Dwarven Mailbox", "mail", "Alliance", nil},
    {1,26,0.339,0.103, "Dwarven Mailbox", "mail", "Alliance", nil}, -- this one might be neutral?
    -- Horde Mailbox
      -- These 5 are technically in thunderbluff, but also want to show on Mulgore map
    {1,19,0.351,0.218, "Horde Mailbox", "mail", "Horde", nil},
    {1,19,0.392,0.244, "Horde Mailbox", "mail", "Horde", nil},
    {1,19,0.446,0.227, "Horde Mailbox", "mail", "Horde", nil},
    {1,19,0.390,0.289, "Horde Mailbox", "mail", "Horde", nil},
    {1,19,0.415,0.330, "Horde Mailbox", "mail", "Horde", nil},

    {1,19,0.470,0.603, "Horde Mailbox", "mail", "Horde", nil},
    {1,19,0.443,0.764, "Horde Mailbox", "mail", "Horde", nil},
    {2,26,0.325,0.286, "Horde Mailbox", "mail", "Horde", nil},
    {2,26,0.267,0.764, "Horde Mailbox", "mail", "Horde", nil},
    --{2,26,0.273,0.774, "Horde Mailbox", "mail", "Horde", nil}, -- possible duplicate of above
    {1,26,0.479,0.086, "Horde Mailbox", "mail", "Horde", nil},
    {1,26,0.520,0.304, "Horde Mailbox", "mail", "Horde", nil},
    {1,26,0.506,0.404, "Horde Mailbox", "mail", "Horde", nil},
    {1,20,0.506,0.704, "Horde Mailbox", "mail", "Horde", nil},
    {1,20,0.534,0.652, "Horde Mailbox", "mail", "Horde", nil},
    {1,20,0.622,0.406, "Horde Mailbox", "mail", "Horde", nil},
    {1,9,0.519,0.422, "Horde Mailbox", "mail", "Horde", nil},
    {1,9,0.424,0.685, "Horde Mailbox", "mail", "Horde", nil},
    {2,4,0.038,0.472, "Horde Mailbox", "mail", "Horde", nil},
    {2,27,0.454,0.551, "Horde Mailbox", "mail", "Horde", nil},
    {2,2,0.612,0.814, "Horde Mailbox", "mail", "Horde", nil},
    {2,3,0.738,0.331, "Horde Mailbox", "mail", "Horde", nil},
    {2,7,0.909,0.227, "Horde Mailbox", "mail", "Horde", nil},
    {2,31,0.615,0.531, "Horde Mailbox", "mail", "Horde", nil},
    {2,24,0.434,0.416, "Horde Mailbox", "mail", "Horde", nil},
    {1,12,0.749,0.440, "Horde Mailbox", "mail", "Horde", nil},
    {1,23,0.311,0.375, "Horde Mailbox", "mail", "Horde", nil},
    {1,10,0.420,0.731, "Horde Mailbox", "mail", "Horde", nil},
    -- "Mailbox"
    {1,2,0.736,0.609, "Mailbox", "mail", "Horde", nil}, -- Splintertree post box
    -- Mechanical Mailbox
    {1,26,0.622,0.392, "Mechanical Mailbox", "mail", "Neutral", nil},
    {1,26,0.648,0.347, "Mechanical Mailbox", "mail", "Neutral", nil},
    {1,23,0.523,0.278, "Mechanical Mailbox", "mail", "Neutral", nil},
    {1,23,0.581,0.220, "Mechanical Mailbox", "mail", "Neutral", nil},
    {1,9,0.590,0.261, "Mechanical Mailbox", "mail", "Neutral", nil},
    {1,27,0.832,0.547, "Mechanical Mailbox", "mail", "Neutral", nil},
    {2,9,0.239,0.287, "Mechanical Mailbox", "mail", "Neutral", nil},
    {1,31,0.613,0.386, "Mechanical Mailbox", "mail", "Neutral", nil},
    {1,17,0.723,0.490, "Mechanical Mailbox", "mail", "Neutral", nil},
    -- Ornamental Mailbox
    {1,25,0.259,0.556, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,25,0.296,0.583, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,25,0.312,0.504, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,25,0.561,0.584, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,25,0.600,0.427, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,2,0.363,0.502, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,2,0.954,0.252, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,31,0.503,0.294, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,6,0.373,0.437, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,26,0.428,0.933, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,12,0.313,0.438, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,8,0.654,0.068, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,22,0.360,0.072, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,29,0.407,0.108, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,3,0.298,0.713, "Ornamental Mailbox", "mail", "Alliance", nil},
    {1,21,0.518,0.380, "Ornamental Mailbox", "mail", "Alliance", nil},
    -- Primative Mailbox
    {1,26,0.543,0.011, "Primative Mailbox", "mail", "Horde", nil},
    {1,26,0.614,0.239, "Primative Mailbox", "mail", "Horde", nil},
    {2,30,0.788,0.805, "Primative Mailbox", "mail", "Horde", nil},
    {2,30,0.904,0.243, "Primative Mailbox", "mail", "Horde", nil},
    {2,7,0.180,0.668, "Primative Mailbox", "mail", "Horde", nil},
    {1,6,0.683,0.188, "Primative Mailbox", "mail", "Horde", nil},
    {1,12,0.435,0.160, "Primative Mailbox", "mail", "Horde", nil},
    {1,8,0.248,0.688, "Primative Mailbox", "mail", "Horde", nil},
    -- Thalassian Mailbox
    {2,19,0.837,0.621, "Thalassian Mailbox", "mail", "Alliance", nil},
    {2,19,0.587,0.750, "Thalassian Mailbox", "mail", "Alliance", nil},
    {2,11,0.066,0.236, "Thalassian Mailbox", "mail", "Alliance", nil},
    {2,11,0.532,0.172, "Thalassian Mailbox", "mail", "Alliance", nil},
    {2,25,0.582,0.278, "Thalassian Mailbox", "mail", "Alliance", nil},
    {2,25,0.222,0.578, "Thalassian Mailbox", "mail", "Alliance", nil},
    {2,30,0.315,0.493, "Thalassian Mailbox", "mail", "Alliance", nil},

}

-- keeping zoneIDs for reference and debugging only
kZoneNames = {GetMapZones(1)}
ekZoneNames = {GetMapZones(2)}
local firstLoad = true

local markers = {}
local debug = false

-- UI Elements will be initialized later
local config
local masterToggle
local dungeonRaidsToggle
local transportToggle
local worldBossToggle

local function print(string) 
    DEFAULT_CHAT_FRAME:AddMessage(string) 
end

-- Prevent the error `Interface\FrameXML\MoneyFrame.lua:185: attempt to perform arithmetic on local `money' (a nil value)`
-- Reference: https://github.com/veechs/Bagshui/blob/c70823167ae2581da7a777c073291805297cb0a2/Components/Bagshui.BlizzFixes.lua#L6
local oldMoneyFrame_UpdateMoney = MoneyFrame_UpdateMoney
function MoneyFrame_UpdateMoney()
    if this.moneyType == "STATIC" and this.staticMoney == nil then
        this.staticMoney = 0
    end
    oldMoneyFrame_UpdateMoney()
end

local function CreateMapPin(parent, x, y, size, texture, tooltipText, tooltipInfo, atlasID)
    if debug then
        print("Attempting to create map pin. X: " .. x .. " Y: " .. y .. " Size: ".. size .. " Texture: " .. texture .. " Tip Text: " .. tooltipText)
    end
    local pin = CreateFrame("Button", nil, parent)
    pin.texture = pin:CreateTexture(nil, "OVERLAY")
    pin:SetWidth(size)
    pin:SetHeight(size)
    pin:SetPoint("CENTER", parent, "TOPLEFT", x, -y) 
    pin.texture:SetAllPoints()
    pin.texture:SetTexture(texture)
    pin:SetFrameLevel(parent:GetFrameLevel() + 3)
    pin:Show()

    local MapTooltip
    pin:SetScript("OnEnter", function()
        WorldMapTooltip:SetOwner(pin, "ANCHOR_BOTTOMRIGHT", -15, 15)
        WorldMapTooltip:SetText(tooltipText, 1, 1 ,1)
        if tooltipInfo == "Alliance" then
            WorldMapTooltip:AddLine(tooltipInfo, 0.145, 0.588, 0.745)
        elseif tooltipInfo == "Horde" then
            WorldMapTooltip:AddLine(tooltipInfo, 0.89, 0.161, 0.102)
        elseif tooltipInfo == "Neutral" then
            WorldMapTooltip:AddLine(tooltipInfo, 1, 1, 0)    
        elseif tooltipInfo ~= "" then 
            WorldMapTooltip:AddLine("Level: " .. tooltipInfo, 1,1,0)
        end
        WorldMapTooltip:Show()
    end)

    pin:SetScript("OnLeave", function()
        WorldMapTooltip:Hide()
    end)

    pin:SetScript("OnClick", function() 
        if texture == "Interface\\Addons\\ModernMapMarkers\\Textures\\worldboss.tga" then
            if debug then
                print("Clicked on a world boss, can't do anything here")
                -- Atlas only has one world boss, Azuregos, so currently we do nothing if you click a world boss.
            end
            return
        end
        if debug then
            print("Tooltip was clicked")
            print("atlasID is: " .. atlasID)
        end
        
        if atlasID ~= nil then
            -- Check if Atlas is present
            if AtlasFrame then
                -- Atlas uses opposite continent IDs to the client so we need to switch them!
                local currentContinent
                currentContinent = GetCurrentMapContinent()
                if currentContinent == 1 then
                    AtlasOptions.AtlasType = 2 -- 1 is EK, 2 is Kalimdor
                elseif currentContinent == 2 then
                    AtlasOptions.AtlasType = 1 -- 1 is EK, 2 is Kalimdor
                end
                
                AtlasOptions.AtlasZone = atlasID
                Atlas_Refresh();
                AtlasFrame:SetFrameStrata("FULLSCREEN")
                AtlasFrame:Show()
                if AtlasQuestFrame then
                    --Automatically opens the Atlas Quest popout for the zone (mimics dungeon Journal in retail... kind of!)
                    AtlasQuestFrame:Show()
                end
            end
        end
    end)
    return pin
end

local function UpdateMarkers()
    if firstLoad == true then
        firstLoad = false
        return
    end

    -- do nothing if the option to draw pins is disabled
    if not ModernMapMarkersDB.showMarkers then
        -- status:SetText("Current Status is: |cFFFFFFFFFalse|r" )
        return
    end
    
    -- do nothing if the worldmap frame is not visible
    if not WorldMapFrame:IsVisible() then
        return
    end
    
    -- Make sure Atlas is installed
    if AtlasFrame and not Atlas_CheckAddonInstalled then
        if debug then
            print("Atlas is installed but missing required function Atlas_CheckAddonInstalled")
        end
    end

    local currentContinent = GetCurrentMapContinent()
    local currentZone = GetCurrentMapZone()

    if currentZone == 0 and currentContinent == 0 then
        -- When Continent and Zone ID is 0 We are looking at the zoomed out world map
        if debug then
            print("Zone and Continent index is 0 - Looking at World Map")
        end
    elseif currentZone == 0 then
        -- When Zone ID is 0 We are looking at the zoomed out map of a continent
        if debug then
            print("Looking at Continent Map")
        end
    end    
    
    -- Because these maps also have co-ordinates, we need to remove any drawn pins otherwise they will overlay these maps
    -- Destroy any entries in markers for pins relating to other zone / continent maps
    for _, pin in pairs(markers) do
        pin:Hide()
        pin = nil
    end
    markers = {} -- Clear the markers table

    local worldMap = WorldMapDetailFrame
    local mapWidth, mapHeight = worldMap:GetWidth(), worldMap:GetHeight()

    for i, data in pairs(points) do
        local isMatching = false
        local cont, zoneID, x, y, label, kind, info, atlasID = unpack(data)
        
        -- Check if this type of marker should be displayed based on settings
        local shouldDisplay = true
        
        if kind == "dungeon" or kind == "raid" then
            shouldDisplay = ModernMapMarkersDB.showDungeonRaids
        elseif kind == "worldboss" then
            shouldDisplay = ModernMapMarkersDB.showWorldBosses
        elseif kind == "boat" or kind == "zepp" or kind == "tram" then
            shouldDisplay = ModernMapMarkersDB.showTransport
        elseif kind == "mail" then
            shouldDisplay = ModernMapMarkersDB.showMailboxes
        end
        
        if not shouldDisplay then
            -- Skip this marker if its type is disabled
            if debug then
                print("Skipping marker: " .. label .. " of type " .. kind .. " (disabled in settings)")
            end
            -- Skip to next iteration
            -- Lua 5.0 doesn't support goto, use alternative approach
        else
            if debug then
                print("Cont: " .. cont .. " Zone ID: " .. zoneID .. " X: " .. x .. " Y: " .. y .. " Label: " .. label .. " Kind: " .. kind)
                -- We are looking at Kalimdor or Eastern Kingdoms (not the world map)
                print("Current Zone ID is: " .. currentZone)
            end
            
            if currentZone == zoneID and currentContinent == cont then
                isMatching = true
                if debug then
                    print("Matched current continent " .. currentContinent .. " to pin data for zone: " .. label)
                    print("We are looking at a map for zone: " .. currentZone .. " which matches defined zone pin data:" ..
                          zoneID .. " for zone: " .. label)
                end
            end

            if isMatching then
                local size = 32
                local texture = "Interface\\Addons\\ModernMapMarkers\\Textures\\POIIcons.blp"
                
                if kind == "raid" then
                    texture = "Interface\\Addons\\ModernMapMarkers\\Textures\\raid.tga"
                elseif kind == "worldboss" then
                    texture = "Interface\\Addons\\ModernMapMarkers\\Textures\\worldboss.tga"
                elseif kind == "zepp" then
                    texture = "Interface\\Addons\\ModernMapMarkers\\Textures\\zepp.tga"
                    size = 24
                elseif kind == "boat" then
                    texture = "Interface\\Addons\\ModernMapMarkers\\Textures\\boat.tga"
                    size = 24
                elseif kind == "tram" then
                    texture = "Interface\\Addons\\ModernMapMarkers\\Textures\\tram.tga"
                    size = 24
                elseif kind == "mail" then
                    texture = "Interface\\Addons\\ModernMapMarkers\\Textures\\mail.tga"
                    size = 12
                else -- Dungeon
                    texture = "Interface\\Addons\\ModernMapMarkers\\Textures\\dungeon.tga"
                end

                local px, py = x * mapWidth, y * mapHeight
                local pin = CreateMapPin(worldMap, px, py, size, texture, label, info, atlasID)        

                markers[i] = pin -- Store the pin in the markers table
            end
        end
    end
end

local function CreateToggleCheckbox(parent, x, y, text, optionKey)
    local checkbox = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
    checkbox:SetPoint("TOPLEFT", x, y)
    checkbox:SetWidth(24)
    checkbox:SetHeight(24)
    
    local label = checkbox:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetPoint("LEFT", checkbox, "RIGHT", 5, 0)
    label:SetText(text)
    
    checkbox:SetScript("OnClick", function()
        local isChecked = checkbox:GetChecked()
        if isChecked then
            ModernMapMarkersDB[optionKey] = true
        else
            ModernMapMarkersDB[optionKey] = false
        end
        
        if debug then
            print("Checkbox " .. text .. " is now set to: " .. tostring(ModernMapMarkersDB[optionKey]))
        end
        UpdateMarkers()
    end)
    
    return checkbox
end

local function UpdateCheckboxStates()
    -- This function updates all checkboxes to match the loaded saved variables
    if masterToggle then
        masterToggle:SetChecked(ModernMapMarkersDB.showMarkers)
    end
    if dungeonRaidsToggle then
        dungeonRaidsToggle:SetChecked(ModernMapMarkersDB.showDungeonRaids)
    end
    if transportToggle then
        transportToggle:SetChecked(ModernMapMarkersDB.showTransport)
    end
    if worldBossToggle then
        worldBossToggle:SetChecked(ModernMapMarkersDB.showWorldBosses)
    end
    if mailboxToggle then
        mailboxToggle:SetChecked(ModernMapMarkersDB.showMailboxes)
    end
end

local function CreateConfigUI()
    config = CreateFrame("Frame", "MMMConfigFrame", UIParent)
    config:SetWidth(320)
    config:SetHeight(220)
    config:SetPoint("CENTER", UIParent, "CENTER")
    config:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = true,
        tileSize = 32,
        edgeSize = 32,
        insets = {
            left = 11,
            right = 11,
            top = 11,
            bottom = 11
        }
    })
    config:SetMovable(true)
    config:EnableMouse(true)
    config:RegisterForDrag("LeftButton")
    config:SetScript("OnDragStart", function()
        this:StartMoving()
    end)
    config:SetScript("OnDragStop", function()
        this:StopMovingOrSizing()
    end)
    
    local title = config:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOP", 0, -15)
    title:SetText("Modern Map Markers")

    -- Master toggle
    local masterLabel = config:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    masterLabel:SetPoint("TOPLEFT", 20, -45)
    masterLabel:SetText("Enable Map Markers:")

    masterToggle = CreateFrame("CheckButton", nil, config, "UICheckButtonTemplate")
    masterToggle:SetPoint("LEFT", masterLabel, "RIGHT", 5, 0)
    masterToggle:SetWidth(24)
    masterToggle:SetHeight(24)

    masterToggle:SetScript("OnClick", function()
        local isChecked = masterToggle:GetChecked()
        if isChecked then
            ModernMapMarkersDB.showMarkers = true
        else
            ModernMapMarkersDB.showMarkers = false
        end
        
        if ModernMapMarkersDB.showMarkers then
            if debug then
                print("Map Markers: Enabled")
            end
        else
            if debug then
                print("Map Markers: Disabled")
            end
            for _, pin in pairs(markers) do
                pin:Hide()
                pin = nil
            end
            markers = {} -- Clear the markers table
        end
        
        UpdateMarkers()
    end)

    -- Add category toggles
    dungeonRaidsToggle = CreateToggleCheckbox(config, 20, -75, "Show Dungeons & Raids", "showDungeonRaids")
    transportToggle = CreateToggleCheckbox(config, 20, -100, "Show Transport (Boats, Zeppelins, Trams)", "showTransport")
    worldBossToggle = CreateToggleCheckbox(config, 20, -125, "Show World Bosses", "showWorldBosses")
    mailboxToggle = CreateToggleCheckbox(config, 20, -150, "Show Mailboxes", "showMailboxes")

    local closeButton = CreateFrame("Button", nil, config, "UIPanelButtonTemplate")
    closeButton:SetWidth(80)
    closeButton:SetHeight(25)
    closeButton:SetPoint("BOTTOM", 0, 15)
    closeButton:SetText("Close")
    closeButton:SetScript("OnClick", function()
        config:Hide()
    end)

    -- Hide the config window by default
    config:Hide()
end

local function InitializeSavedVariables()
    -- Initialize saved variables with defaults if they don't exist
    if not ModernMapMarkersDB then
        ModernMapMarkersDB = {
            showMarkers = true,
            showDungeonRaids = true,
            showTransport = true,
            showWorldBosses = true,
            showMailboxes = true
        }
        if debug then
            print("Modern Map Markers: Created new saved variables with defaults")
        end
    else
        -- Ensure all settings exist (in case of addon updates)
        if ModernMapMarkersDB.showMarkers == nil then
            ModernMapMarkersDB.showMarkers = true
        end
        if ModernMapMarkersDB.showDungeonRaids == nil then
            ModernMapMarkersDB.showDungeonRaids = true
        end
        if ModernMapMarkersDB.showTransport == nil then
            ModernMapMarkersDB.showTransport = true
        end
        if ModernMapMarkersDB.showWorldBosses == nil then
            ModernMapMarkersDB.showWorldBosses = true
        end
        if ModernMapMarkersDB.showMailboxes == nill then
            ModernMapMarkersDB.showMailboxes = true
        end
    end
    
    if debug then
        print("Saved Variables Loaded:")
        print("  showMarkers: " .. tostring(ModernMapMarkersDB.showMarkers))
        print("  showDungeonRaids: " .. tostring(ModernMapMarkersDB.showDungeonRaids))
        print("  showTransport: " .. tostring(ModernMapMarkersDB.showTransport))
        print("  showWorldBosses: " .. tostring(ModernMapMarkersDB.showWorldBosses))
        print("  showMailboxes: " .. tostring(ModernMapMarkersDB.showMailboxes))
    end
end

-- Add a flag to track if we've already initialized
local initialized = false

-- Event(s) handling frame
local frame = CreateFrame("Frame")

frame:RegisterEvent("WORLD_MAP_UPDATE")
frame:RegisterEvent("VARIABLES_LOADED")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")

frame:SetScript("OnEvent", function()
    if event == "ADDON_LOADED" and arg1 == "ModernMapMarkers" then
        -- Addon is loaded, create UI but don't initialize saved vars yet
        CreateConfigUI()
        if debug then
            print("Modern Map Markers: Addon Loaded, UI Created")
        end
    elseif event == "VARIABLES_LOADED" then
        -- This is when saved variables are actually available
        if not initialized then
            InitializeSavedVariables()
            UpdateCheckboxStates()
            initialized = true
            
            if debug then
                print("Modern Map Markers: Variables Loaded and Initialized")
            end
        end
    elseif event == "PLAYER_ENTERING_WORLD" then
        -- Ensure everything is set up when entering world
        if not initialized then
            InitializeSavedVariables()
            if not config then
                CreateConfigUI()
            end
            UpdateCheckboxStates()
            initialized = true
        end
        -- Always update markers when entering world
        UpdateMarkers()
    elseif event == "WORLD_MAP_UPDATE" then
        if initialized then
            UpdateMarkers()
        end
    end
end)

local function CreateToggleCheckbox(parent, x, y, text, optionKey)
    local checkbox = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
    checkbox:SetPoint("TOPLEFT", x, y)
    checkbox:SetWidth(24)
    checkbox:SetHeight(24)
    
    local label = checkbox:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetPoint("LEFT", checkbox, "RIGHT", 5, 0)
    label:SetText(text)
    
    checkbox:SetScript("OnClick", function()
        local isChecked = checkbox:GetChecked()
        if isChecked then
            ModernMapMarkersDB[optionKey] = true
        else
            ModernMapMarkersDB[optionKey] = false
        end
        
        if debug then
            print("Checkbox " .. text .. " is now set to: " .. tostring(ModernMapMarkersDB[optionKey]))
        end
        UpdateMarkers()
    end)
    
    return checkbox
end

-- Slash command handler
SLASH_MMM1 = "/mmm"
SlashCmdList["MMM"] = function()
    if MMMConfigFrame and MMMConfigFrame:IsVisible() then
        MMMConfigFrame:Hide()
    else
        MMMConfigFrame:Show()
    end
end

if debug then
    DEFAULT_CHAT_FRAME:AddMessage("Modern Map Markers: Initial Load Complete")
end