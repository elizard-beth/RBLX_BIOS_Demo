--[[
Boot process
It is recommended you do not change this
]]

function boot(Player, specs)
	for _, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do 
		if v:IsA("ScreenGui") then 
			v.Parent = game.ReplicatedStorage["C:"].OS.UI
		end
	end
	script.Parent.UI.BOOT.Parent = Player.PlayerGui
end
return {boot, require(script.sysinfo), true}
