local ReplicatedStorage = game:GetService("ReplicatedStorage")
local NotificationModule = require(ReplicatedStorage.Game.Notification)

local BasicJailbreakModule = {}

function BasicJailbreakModule.SendNotif(msg: string)
	NotificationModule.new({
		Text = msg;
	})
end

return BasicJailbreakModule
