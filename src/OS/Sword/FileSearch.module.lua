--[[
This script is intended to enable the ability to "search" for files by turning the 
C:\OS..., etc format into game.ReplicatedStorage["C"].OS
]]

_G.fileLocation = nil

local System = {
	SystemFile = true,
	Required = true
}

return {
	function(fileLocation, cd)
		local x
		if cd then
			x = cd .. fileLocation
			x = string.gsub(x, "\\", ".")
		else
			x = fileLocation
			x = string.gsub(x,":",":']")
			x = string.gsub(x, "\\", ".")
			x = "['" .. x
		end

		local y = loadstring("return game.ReplicatedStorage" .. x)
		return y
	end,
	
	System
}
