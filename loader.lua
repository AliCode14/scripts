local scriptsByPlaceId = {
	[3978370137] = "https://raw.githubusercontent.com/AliCode14/scripts/refs/heads/main/GpoKaitun.lua",
	[1730877806] = "https://raw.githubusercontent.com/AliCode14/scripts/refs/heads/main/GpoKaitun.lua",
	[116480749200627] = "https://raw.githubusercontent.com/AliCode14/scripts/refs/heads/main/GpoKaitun.lua",
	[6811831486] = "https://raw.githubusercontent.com/AliCode14/scripts/refs/heads/main/GpoKaitun.lua",
	[7465136166] = "https://raw.githubusercontent.com/AliCode14/scripts/refs/heads/main/GpoKaitun.lua",
	[120135584963579] = "https://raw.githubusercontent.com/AliCode14/scripts/refs/heads/main/DontStealALabubu.lua",
	[131623223084840] = "https://raw.githubusercontent.com/AliCode14/scripts/refs/heads/main/EscapeTusnamiForBrainrots!.lua",
}

local placeId = game.PlaceId
local gameId = game.GameId
local scriptUrl = scriptsByPlaceId[placeId] or scriptsByPlaceId[gameId]

if scriptUrl then
	loadstring(game:HttpGet(scriptUrl))()
else
	warn("Game not supported.")
end
