ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('esx_joblisting:getJobsList', function(source, cb)
	MySQL.Async.fetchAll(
		'SELECT * FROM jobs WHERE whitelisted = false',
		{},
		function(result)
			local data = {}
			for i=1, #result, 1 do
				table.insert(data, {
					value   = result[i].name,
					label   = result[i].label
				})
			end
			cb(data)
		end
	)
end)

RegisterServerEvent('esx_joblisting:setJob')
AddEventHandler('esx_joblisting:setJob', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob(job, 0)
end)

RegisterServerEvent('esx_joblisting:leaveJob')
AddEventHandler('esx_joblisting:leaveJob', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local job = "unemployed"
	xPlayer.setJob(job, 0)
end)

RegisterServerEvent('esx_joblisting:checkJobUS')
AddEventHandler('esx_joblisting:checkJobUS', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.job.name == ("unitedstatesarmy") or xPlayer.job.name == ("unitedstatesairforce") or xPlayer.job.name == ("unemployed") then 
		TriggerClientEvent("esx_joblisting:TP2US", source)
	else 
		TriggerClientEvent("esx_joblisting:notJob", source)
	end
end)

RegisterServerEvent('esx_joblisting:checkJobUK')
AddEventHandler('esx_joblisting:checkJobUK', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.job.name == ("unitedkingdomarmy") or xPlayer.job.name == ("unemployed") then 
		TriggerClientEvent("esx_joblisting:TP2UK", source)
	else 
		TriggerClientEvent("esx_joblisting:notJob", source)
	end
end)

RegisterServerEvent('esx_joblisting:checkJobRF')
AddEventHandler('esx_joblisting:checkJobRF', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.job.name == ("russianfederationarmy") or xPlayer.job.name == ("unemployed") then 
		TriggerClientEvent("esx_joblisting:TP2RF", source)
	else 
		TriggerClientEvent("esx_joblisting:notJob", source)
	end
end)

RegisterServerEvent('esx_joblisting:checkJobCN')
AddEventHandler('esx_joblisting:checkJobCN', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.job.name == ("chinaarmy") or xPlayer.job.name == ("unemployed") then 
		TriggerClientEvent("esx_joblisting:TP2CN", source)
	else 
		TriggerClientEvent("esx_joblisting:notJob", source)
	end
end)
