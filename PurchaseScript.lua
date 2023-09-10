ReplicatedStorage = game:GetService("ReplicatedStorage")
MarketplaceService = game:GetService("MarketplaceService")

buttonEvent = ReplicatedStorage:WaitForChild("ButtonEvent")

buttonEvent.OnServerEvent:Connect(function(player, purchaseType, id)
	if typeof(id) == "number" and id >= 0 and math.floor(id) == id then
		if purchaseType == "regular" then
			MarketplaceService:PromptPurchase(player, id, false)
		elseif purchaseType == "bundle" then
			MarketplaceService:PromptBundlePurchase(player, id)
		elseif purchaseType == "gamepass" then
			MarketplaceService:PromptGamePassPurchase(player, id)
		end
	else
		print("invalid id")
	end
end)
