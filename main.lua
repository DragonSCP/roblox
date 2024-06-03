local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local XRay = game.Workspace.XRay

local UIS = game:GetService("UserInputService")
local Toggled = false
local Button = Player.PlayerGui:WaitForChild("MainFrame"):WaitForChild("ToggleButton")
local ValidKeyCode = {
	Enum.KeyCode.E
}
local ValidTransparency = {}

UIS.InputBegan:Connect(function(key, gameProcessedEvent)
	if not gameProcessedEvent then
		if not Toggled then
			for _, KEY in pairs(ValidKeyCode) do
				if key.KeyCode == KEY then
					for partsIndex, parts in pairs(XRay:GetDescendants()) do
						local success, err = pcall(function()
							ValidTransparency["Part-"..parts.Name] = parts.Transparency
							parts.Transparency = 0.5
							Toggled = true
						end)
					end
				end
			end
		else
			for _, KEY in pairs(ValidKeyCode) do
				if key.KeyCode == KEY then
					for partsIndex, parts in pairs(XRay:GetDescendants()) do
						local success, err = pcall(function()
							parts.Transparency = ValidTransparency["Part-"..parts.Name]
							Toggled = false
						end)
					end
				end
			end
		end
	end
end)

Button.MouseButton1Click:Connect(function()
	if not Toggled then
		for _, KEY in pairs(ValidKeyCode) do
			for partsIndex, parts in pairs(XRay:GetDescendants()) do
				local success, err = pcall(function()
					ValidTransparency["Part-"..parts.Name] = parts.Transparency
					parts.Transparency = 0.5
					Toggled = true
				end)
			end
		end
	else
		for _, KEY in pairs(ValidKeyCode) do
			for partsIndex, parts in pairs(XRay:GetDescendants()) do
				local success, err = pcall(function()
					parts.Transparency = ValidTransparency["Part-"..parts.Name]
					Toggled = false
				end)
			end
		end
	end
end)
