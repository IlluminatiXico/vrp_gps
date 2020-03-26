-----------=============================================[SCRIPT BY FANCAZISTA]=============================================-----------
-- Script created by Fancazista, all rights reserved


local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vRP_rcCar")

local stat = false

AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
	local user_id = vRP.getUserId({source})
    local faction = vRP.getUserGroupByType({user_id,"job"})
	local name = vRP.getPlayerName({source})
	local money = vRP.getMoney({user_id})
	local bmoney = vRP.getBankMoney({user_id})
	TriggerClientEvent('FANCA:radaroffonspawn', source, user_id, faction, name, money, bmoney)
end)


vRP.defInventoryItem({"gps", "GPS", "Finalmente posso sapere in che via mi trovo!", function(args)
	local choices = {}
	
	choices["Usa"] = {function(player,choice,mod)
		local user_id = vRP.getUserId({player})
		if user_id ~= nil then
			if stat then
				stat = false
				TriggerClientEvent('radarr', player, false)
				vRPclient.notify(player,{"Hai spento il GPS"})
				vRP.closeMenu({player})
			else
				stat = true
				TriggerClientEvent('radarr', player, true)
				vRPclient.notify(player,{"Hai acceso il GPS"})
				vRP.closeMenu({player})
			end
		end
	end}

	return choices
end, 0.2})

-----------=============================================[SCRIPT BY FANCAZISTA]=============================================-----------
