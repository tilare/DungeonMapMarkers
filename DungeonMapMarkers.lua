-- TO DO TRY AND DRAW PINS WHEN THE ZONE ID IS 0 AMD THE CONTINENT ID IS NOT 0
-- Will need to have a co-ords array for each dungeon / raid on the continent map as well :(
-- Saved variables
DungeonMapMarkersDB = DungeonMapMarkersDB or {
    showMarkers = true
}

-- Marker data: { continent, zoneID, x, y, name, type }
local points = {
    -- Kalimdor
    {1, 2, 0.123, 0.128, "Blackfathom Depths", "dungeon", "24-32", 1},
    {1, 3, 0.57, 0.78, "Azuregos", "worldboss", "60", nil},
    {1, 23, 0.66, 0.49, "Black Morass", "dungeon", "60", 2},
    {1, 8, 0.82, 0.80, "Concavius", "worldboss", "60"},
    {1, 2, 0.51, 0.78, "Crescent Grove", "dungeon", "32-38", 3},
    {1, 12, 0.59, 0.41, "Dire Maul", "dungeon", "55-60", 4}, -- Currently only EAST, need to add North and West (atlas 5 and 6)
    {1, 999, 999, 999, "Emerald Sanctum", "raid", "60", 7},
    {1, 8, 0.29, 0.629, "Maraudon", "dungeon", "46-55", 8},
    {1, 10, 0.53, 0.76, "Onyixia's Lair", "raid", "60", 9},
    {1, 23, 0.381, 0.772, "Ostarius", "worldboss", "60", nil},
    {1, 20, 0.53, 0.486, "Ragefire Chasm", "dungeon", "13-18", 10},
    {1, 26, 0.491, 0.896, "Razorfen Downs", "dungeon", "37-46", 11},
    {1, 26, 0.431, 0.863, "Razorfen Kraul", "dungeon", "29-38", 12},
    {1, 21, 0.255, 0.966, "Ruins of Ahn Qiraj", "raid", "60", 13},
    {1, 21, 0.27, 0.93, "Temple of Ahn Qiraj", "raid", "60", 14},
    {1, 26, 0.44, 0.38, "Wailing Caverns", "dungeon", "17-24", 15},
    {1, 23, 0.389, 0.184, "Zul'Farrak", "dungeon", "44-54", 16},
    -- Eastern Kingdoms
    {2, 23, 0.35, 0.85, "Blackrock Depths", "dungeon", "52-60", 1},
    {2, 23, 0.24, 0.86, "Blackwing Lair", "raid", "60", 2},
    {2, 8, 0.471, 0.751, "Dark Reaver of Karazhan", "worldboss", "60", nil},
    {2, 36, 0.42, 0.71, "The Deadmines", "dungeon", "17-24", 3},
    {2, 14, 0.30, 0.27, "Gilneas City", "dungeon", "43", 4},
    {2, 46, 0.29, 0.76, "Gnomeregan", "dungeon", "29-38", 5},
    {2, 7, 0.95, 0.53, "Hateforge Quarry", "dungeon", "52-60", 6},
    {2, 8, 0.45, 0.75, "Karazhan Crypt", "dungeon", "58-60", 7},
    {2, 7, 0.29, 0.37, "Lower Blackrock Spire", "dungeon", "55-60", 8},
    {2, 8, 0.46, 0.70, "Lower Karazhan Halls", "raid", "58-60", 9},
    {2, 23, 0.30, 0.80, "Molten Core", "raid", "60", 10},
    {2, 11, 0.082, 0.38, "Nerubian Overseer", "worldboss", "60", nil},
    {2, 11, 0.40, 0.28, "Naxxramas", "raid", "60", 11},
    {2, 31, 0.82, 0.34, "Scarlet Monastery", "dungeon", "32-45", 12}, -- atlasID for Armory, Cath, GY and Lib are 13, 14, 15
    {2, 34, 0.69, 0.74, "Scholomance", "dungeon", "58-60", 16},
    {2, 24, 0.44, 0.67, "Shadowfang Keep", "dungeon", "22-30", 17},
    {2, 999, 0.99, 0.99, "The Stockades", "dungeon", "24-31", 18},
    {2, 25, 0.63, 0.58, "Stormwind Vault", "dungeon", "60", 19},
    {2, 12, 0.29, 0.61, "Stormwind Vault - Horde Entrance", "dungeon", "60", 19},
    {2, 11, 0.31, 0.14, "Stratholme", "dungeon", "58-60", 20},
    {2, 11, 0.47, 0.24, "Stratholme - Back Gate", "dungeon", "58-60", 21},
    {2, 999, 0.99, 0.99, "The Sunken Temple", "dungeon", "50-60", 22},
    {2, 4, 0.42, 0.12, "Uldaman", "dungeon", "41-51", 23},
    {2, 7, 0.31, 0.39, "Upper Blackrock Spire", "dungeon", "55-60", 24},
    {2, 999, 0.99, 0.99, "Zul Gurub", "raid", "60", 25},
}

-- keeping zoneIDs for reference and debugging only
kZoneNames = {GetMapZones(1)}
ekZoneNames = {GetMapZones(2)}

local function ShowAllMapZones()
    for i, zonename in pairs(ekZoneNames) do
        -- Print zone names for debugging only | not used in main code base
        print("ID: " .. i .. " Zone Name: " .. zonename)
    end
end

local markers = {}
local debug = false

local function CreateMapPin(parent, x, y, size, texture, tooltipText, tooltipLevel, atlasID)
    -- print("Attempting to create map pin. X: " .. x .. " Y: " .. y .. " Size: ".. size .. " Texture: " .. texture .. " Tip Text: " .. tooltipText)
    local pin = CreateFrame("Button", nil, parent)
    pin:SetWidth(size)
    pin:SetHeight(size)
    pin:SetPoint("TOPLEFT", parent, "TOPLEFT", x, -y)

    pin.texture = pin:CreateTexture(nil, "OVERLAY")
    pin.texture:SetAllPoints()
    pin.texture:SetTexture(texture)

    pin:SetScript("OnEnter", function()
        local prefix
        GameTooltip:SetOwner(pin, "ANCHOR_BOTTOMRIGHT", -15, 15)
        GameTooltip:SetText(tooltipText, 1, 1, 1)
        GameTooltip:AddLine("Level: " .. tooltipLevel, 1,1,0)
        GameTooltip:SetFrameStrata("TOOLTIP")
        GameTooltip:Show()
    end)

    pin:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    pin:SetScript("OnClick", function() 
        if texture == "worldboss" then
            -- Can't hand TWoW World bosses in Atlas yet.
            return
        end
        if debug then
            print("Tooltip was clicked") 
        end
        
        if AtlasFrame then
            --WorldMapFrame:Hide()
            -- Atlas uses opposite continent IDs to the client so we need to switch them!
            local currentContinent
            currentContinent = GetCurrentMapContinent()
            if currentContinent == 1 then
                AtlasOptions.AtlasType = 2 -- 1 is EK, 2 is Kalimdor
            elseif currentContinent == 2 then
                AtlasOptions.AtlasType = 1 -- 1 is EK, 2 is Kalimdor
            end
            
            AtlasOptions.AtlasZone = atlasID -- Sequential number in Alphabetical order
            Atlas_Refresh();
            AtlasFrame:SetFrameStrata("FULLSCREEN")
            AtlasFrame:Show()
            if AtlasQuestFrame then
                AtlasQuestFrame:Show() 
            end            
        end
    end)

    pin:SetFrameStrata("TOOLTIP")
    pin:Show()
    return pin
end

local function UpdateMarkers()
    if debug then
        print("Function UpdateMarkers was executed")
        print("")
        print("")
    end

    -- Look for and destroy and entries in markers for pins relating to other zone / continent maps
    -- do nothing if the option to draw pins is disabled
    if not DungeonMapMarkersDB.showMarkers then
        -- status:SetText("Current Status is: |cFFFFFFFFFalse|r" )
        return
    else
        -- status:SetText("Current Status is: |cFFFFFFFFTrue|r" )
    end
    -- do nothing if the worldmap frame is not visible
    if not WorldMapFrame:IsVisible() then
        return
    end

    local currentContinent = GetCurrentMapContinent()
    local currentZone = GetCurrentMapZone()

   -- if currentZone == 0 and currentContinent == 0 then
        if debug then
            print("Zone and Continent index is 0 - Looking at World Map")
        end
--    elseif currentZone == 0 then
        -- When Zone ID is 0 We are looking at the zoomed out map of a continent / world
        -- Because these maps also have co-ordinates, we need to remove any drawn pins otherwise they will overlay these maps
        if debug then
            print("Zone is 0 - Looking at Continent Map [ Clear all Pins ] ")
        end
        for _, pin in pairs(markers) do
            pin:Hide()
            pin = nil
        end
        markers = {} -- Clear the markers table
 --   end

    local worldMap = WorldMapFrame
    local mapWidth, mapHeight = worldMap:GetWidth(), worldMap:GetHeight()

    for i, data in pairs(points) do
        local isMatching = false
        local cont, zoneID, x, y, label, kind, lRange, atlasID = unpack(data)

        -- print("Cont: " .. cont .. " Zone ID: " .. zoneID .. " X: " .. x .. " Y: " .. y .. " Label: " .. label .. " Kind: " .. kind)
        -- We are looking at Kalimdor or Eastern Kingdoms (not the world map)
        -- print("Current Zone ID is: " .. currentZone)
        if currentZone == zoneID and currentContinent == cont then
            isMatching = true
            if debug then
                print("Matched current continent " .. currentContinent .. " to  pin data for zone: " .. label)
                print("We are looking at a map for zone: " .. currentZone .. " whch matches defined zone pin data:" ..
                          zoneID .. " for zone: " .. label)
            else
                if debug then
                    Print("Current Zone is: " .. currentZone .. " and current continent is: " .. currentContinent)
                    local zoneList = GetMapZones(currentContinent)
                    for zoneFromList in pairs(zoneList) do
                        if zoneFromList == currentZone then
                            print("Current Zone Name is: " .. zoneFromList)
                        end
                    end
                end
            end
            -- TODO Perhaps update the array for all zones leaving nul dungeons for zones where instances currerntly to not exist?
        end
        -- end

        if isMatching then
            local texture = "Interface\\Addons\\DungeonMapMarkers\\Textures\\POIIcons.blp"
            if kind == "raid" then
                texture = "Interface\\Addons\\DungeonMapMarkers\\Textures\\raid.tga"
            elseif kind == "worldboss" then
                texture = "Interface\\Addons\\DungeonMapMarkers\\Textures\\worldboss.tga"
            else -- Dungeon
                texture = "Interface\\Addons\\DungeonMapMarkers\\Textures\\dungeon.tga"
            end

            local pin
            local px, py = x * mapWidth, y * mapHeight
            pin = CreateMapPin(worldMap, px, py, 16, texture, label, lRange, atlasID)
            -- markers[i] = pin
            pin:SetWidth(32)
            pin:SetHeight(32)
            pin.texture:SetTexture(texture)
            pin:SetPoint("TOPLEFT", worldMap, "TOPLEFT", px, -py)
            pin:Show()

            markers[i] = pin -- Store the pin in the markers table
        end
    end
end

-- Event(s) handling frame
local frame = CreateFrame("Frame")
frame:RegisterEvent("WORLD_MAP_UPDATE")
frame:SetScript("OnEvent", function()
    if event == "WORLD_MAP_UPDATE" then
        UpdateMarkers()
    end
end)

-- everything below is for the config menu except the last line
SLASH_DMM1 = "/dmm"
SlashCmdList["DMM"] = function()
    if DMMConfigFrame:IsVisible() then
        DMMConfigFrame:Hide()
    else
        DMMConfigFrame:Show()
    end
end

local config = CreateFrame("Frame", "DMMConfigFrame", UIParent)
config:SetWidth(260)
config:SetHeight(120)
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
-- END

local title = config:CreateFontString(nil, "OVERLAY", "GameFontNormal")
title:SetPoint("TOP", 0, -12)
title:SetText("Dungeon Map Markers")

status = config:CreateFontString(nil, "OVERLAY", "GameFontNormal")
status:SetPoint("TOP", 0, -30)

local toggle = CreateFrame("Button", nil, config, "UIPanelButtonTemplate")
toggle:SetWidth(180)
toggle:SetHeight(25)
toggle:SetPoint("TOP", 0, -45)
toggle:SetText("Toggle Markers")
toggle:SetScript("OnClick", function()
    DungeonMapMarkersDB.showMarkers = not DungeonMapMarkersDB.showMarkers
    if DungeonMapMarkersDB.showMarkers then
        DEFAULT_CHAT_FRAME:AddMessage("Dungeon Map Markers: Enabled")
        status:SetText("Current Status is: |cFFFFFFFFTrue|r")
    else
        DEFAULT_CHAT_FRAME:AddMessage("Dungeon Map Markers: Disabled")
        status:SetText("Current Status is: |cFFFFFFFFFalse|r")
    end
    UpdateMarkers()
end)

local closeButton = CreateFrame("Button", nil, config, "UIPanelButtonTemplate")
closeButton:SetWidth(80)
closeButton:SetHeight(25)
closeButton:SetPoint("BOTTOM", 0, 10)
closeButton:SetText("Close")
closeButton:SetScript("OnClick", function()
    config:Hide()
end)

-- Hide the config window by default when entering the game
DMMConfigFrame:Hide()
if debug then
    DEFAULT_CHAT_FRAME:AddMessage("Dungeon Map Markers: Loaded")
end
