local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "CW SCRIPT", HidePremium = true, IntroText = "cw script", SaveConfig = true, ConfigFolder = "COMBATWARRIORS"})

local CombatTab = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = CombatTab:AddSection({
	Name = "YES"
})

Tab:AddButton({
	Name = "Silent aim (cant turn off)"
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebulaprivatewhitelistbypass/cw/main/silentaim"))()
  	end    
})

Tab:AddToggle({
	Name = "Autopary (also idk if untoggable)"
	Default = false,
	Callback = function(Value)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebulaprivatewhitelistbypass/cw/main/AUTO%20PARRY"))()
	end    
})

function AddTag(plr, tag, color)
	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Plr = plr
	local ChatTag = {}
	ChatTag[Plr] =
		{
			TagText = tag, --Text
			TagColor = color, --Rgb
			NameColor = color
		}



	local oldchanneltab
	local oldchannelfunc
	local oldchanneltabs = {}

	--// Chat Listener
	for i, v in pairs(getconnections(ReplicatedStorage.DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent)) do
		if
			v.Function
			and #debug.getupvalues(v.Function) > 0
			and type(debug.getupvalues(v.Function)[1]) == "table"
			and getmetatable(debug.getupvalues(v.Function)[1])
			and getmetatable(debug.getupvalues(v.Function)[1]).GetChannel
		then
			oldchanneltab = getmetatable(debug.getupvalues(v.Function)[1])
			oldchannelfunc = getmetatable(debug.getupvalues(v.Function)[1]).GetChannel
			getmetatable(debug.getupvalues(v.Function)[1]).GetChannel = function(Self, Name)
				local tab = oldchannelfunc(Self, Name)
				if tab and tab.AddMessageToChannel then
					local addmessage = tab.AddMessageToChannel
					if oldchanneltabs[tab] == nil then
						oldchanneltabs[tab] = tab.AddMessageToChannel
					end
					tab.AddMessageToChannel = function(Self2, MessageData)
						if MessageData.FromSpeaker and Players[MessageData.FromSpeaker] then
							if ChatTag[Players[MessageData.FromSpeaker].Name] then
								MessageData.ExtraData = {
									NameColor = ChatTag[Players[MessageData.FromSpeaker].Name].NameColor
										or Players[MessageData.FromSpeaker].TeamColor.Color,
									Tags = {
										table.unpack(MessageData.ExtraData.Tags),
										{
											TagColor = ChatTag[Players[MessageData.FromSpeaker].Name].TagColor,
											TagText = ChatTag[Players[MessageData.FromSpeaker].Name].TagText,
										},
									},
								}
							end
						end
						return addmessage(Self2, MessageData)
					end
				end
				return tab
			end
		end
	end
end


AddTag("ac_doesntexist","Furry", Color3.fromRGB(1, 0.3, 0.3))
AddTag("YMikeOfficialYT","BEST MICRO DEV", Color3.fromRGB(1, 0.3, 0.3))
AddTag("abnormalhack34","Script owner", Color3.fromRGB(1, 0.3, 0.3))
AddTag("Goldenlegend2022","Skidder", Color3.fromRGB(1, 0.3, 0.3))
AddTag("IHaveACatAndAnDOG","DEV", Color3.fromRGB(1, 0.3, 0.3))










--IMPORTANT IF UR GONNA CHANGE THIS U MIGHT GET BLACKLISTED EVEN IF UR AN DEV IF U DONT HAVE PERMISSIONS TO DO IT--

local lplr = game.Players.LocalPlayer



if lplr.UserId == "3890122976" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebulaprivatewhitelistbypass/Recreate/main/HahaWood", true))()
elseif lplr.UserId == "4085911762" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebulaprivatewhitelistbypass/Recreate/main/HahaWood", true))()
elseif lplr.UserId == "3898689350" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebulaprivatewhitelistbypass/Recreate/main/HahaWood", true))()
else
	
end
