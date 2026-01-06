fif not game:IsLoaded() then game.Loaded:Wait() end
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")

local stuff = "stuff"

for _, remotes in ReplicatedStorage_upvr:GetDescendants() do
	if remotes:IsA("RemoteEvent") then
		if #remotes.Name == 36 then
			remotes.OnClientEvent:Connect(function(mode, table)
				if mode == "lwchzwil" then
					stuff = table
					print(table)
					print("i should have logged it")
				end
			end)
		end 
	end
end

while task.wait() do
	if stuff ~= "stuff" then
		print(stuff)
	end
end
