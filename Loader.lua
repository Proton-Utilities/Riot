local FileTarget = "https://raw.githubusercontent.com/Proton-Utilities/Riot/refs/heads/main/Files/"
local placeID = game.PlaceId
local Files = {
    [292439477] = "Riot_PhantomForces.luau"
}

print("\n")
print("RIOT - by Proton Utilities")

local fileName = Files[placeID]
if fileName then
    print("     ‣ Loading: " .. fileName)
    local url = FileTarget .. fileName
    local success, result = pcall(game.HttpGet, game, url)
    
    if success then
        local func, loadError = loadstring(result)
        if func then
            print("     ‣ Successfully fetched: " .. fileName .. "\n\n")
            pcall(func)
        else
            warn("     ‣ Error loading file: " .. fileName .. " - " .. (loadError or "Unknown error") .. "\n\n")
        end
    else
        warn("     ‣ Failed to fetch file from URL: " .. url .. "\n\n")
    end
else
    warn("     ‣ No file found for PlaceId: " .. tostring(placeID) .. "\n\n")
end
