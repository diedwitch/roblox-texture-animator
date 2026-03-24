-- Services
local RunService = game:GetService("RunService")

-- Settings
local part = script.Parent
local scrollSpeed = 0.5 -- Adjust this to change how fast it moves

-- Function to update textures
local function onHeartbeat(deltaTime)
	for _, obj in pairs(part:GetChildren()) do
		if obj:IsA("Texture") then
			-- Using deltaTime ensures the speed is the same regardless of lag
			obj.OffsetStudsU += scrollSpeed * deltaTime
		end
	end
end

-- Connect to the Heartbeat event (runs every frame)
RunService.Heartbeat:Connect(onHeartbeat)
