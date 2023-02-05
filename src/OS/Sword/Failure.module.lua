--[[
System failures
]]

local failures = {
	["0x00001"] = {
		"BOOT_FAIL_NO_RESPONSE",
		"Perhaps a necessary system file is corrupted?"
	},
	["0x00000"] = {
		"FEATURE_DISABLED",
		"SwordOS is not ready for public use!"
	}
}

local function err(erro)
	local err = require(game.ReplicatedStorage["C:"].OS.Sword.Failure)[1][erro]
	game.Players.LocalPlayer.PlayerGui.BSOD.Background.err.Text = 
		erro .. 
		"," .. 
		err[1] .. 
		'\n<font color= "rgb(240, 40, 10)">TROUBLESHOOT: ' .. 
		err[2] .. 
		"</font>"
  game.ReplicatedStorage["C:"].OS.UI.BSOD.Parent = game.Players.LocalPlayer.PlayerGui
end

return {failures , err}
