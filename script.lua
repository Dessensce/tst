if not game:IsLoaded() then game.Loaded:Wait() end
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")

for _, remotes in ReplicatedStorage_upvr:GetDescendants() do
	if remotes:IsA("RemoteEvent") then
		if #remotes.Name == 36 then
			remotes.OnClientEvent:Connect(function(mode, ...)
				if mode == "lwchzwil" then
					print(...)
				end
			end)
		end 
	end
end


