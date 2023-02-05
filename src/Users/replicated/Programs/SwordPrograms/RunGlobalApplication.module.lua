--[[
All OSes for this are supposed to have support for a "global" application type
which can be through a compatiblity layer using this script.
They should all have the "EXE" file extension.
Please fill out the following information according to your OS.
]]

local Settings = { -- configurations
	ApplicationLocation = "C:\Users\replicated\Programs" -- where global applications are stored
}

local System = { -- System file information
	SystemFile = true,
	Required = false
}

local Requirements = { -- These are the system requirements this application requires
	CPU = {
		Cores = 1,
		Threads = 1,
		Clock = 500
	},
	RAM = {
		Amount = 1000,
		Clock = 500
	},
	GPU = {
		VRAM = 0.128,
		Clock = 0.1
	}
}

local function ExecuteFile(file)
	-- error handling/checking
	if file == nil then return "Error: 'File' must not be nil" end
	if not (type(file) == "string") then return "Error: 'File' must be string, not " .. type(file) end
	if not (file:split(".")[1]:lower() == "exe") then return "Error: 'File must have EXE extension" end
	
	--nil
end

return {System, Requirements, Functions = {ExecuteFile}}
