local ReplicatedStorage = game:GetService("ReplicatedStorage")

local button = script.Parent
local screenGui = button.Parent
local textBox = screenGui:WaitForChild("TextBox")
local buttonEvent = ReplicatedStorage:WaitForChild("ButtonEvent")

button.Activated:Connect(function()
	local id
	local success, reason
	success, reason = pcall(function()
		id = tonumber(textBox.Text)
	end)
	if success then
		buttonEvent:FireServer("gamepass", id)	
	else
		warn(reason)
	end
end)
