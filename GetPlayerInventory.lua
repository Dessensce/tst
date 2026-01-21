local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")	
local Players = game:GetService("Players")

local InventoryUpdatePlayer = ReplicatedStorage:WaitForChild("TradeInventoryUpdatePlayer")
local UpdateOwnedRE = ReplicatedStorage:WaitForChild("TradeUpdateOwned")
	
function InventoryRecv(tbl)
	setclipboard(HttpService:JSONEncode(tbl))
end

function GetInventory(plr:Player)
	InventoryUpdatePlayer:FireServer(plr)
end

GetInventory(Players.LocalPlayer)

UpdateOwnedRE.OnClientEvent:Connect(InventoryRecv)
