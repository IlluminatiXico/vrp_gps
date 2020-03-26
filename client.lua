-----------=============================================[SCRIPT BY FANCAZISTA]=============================================-----------
-- Script created by Fancazista, all rights reserved.

RegisterNetEvent('FANCA:radaroffonspawn')
AddEventHandler('FANCA:radaroffonspawn', function(user_id)
		DisplayRadar(false)
end)

RegisterNetEvent('radarr')
AddEventHandler('radarr', function(radarrr)
	if radarrr then
		DisplayRadar(true)
	  else
		DisplayRadar(false)
	  end
end)

-----------=============================================[SCRIPT BY FANCAZISTA]=============================================-----------