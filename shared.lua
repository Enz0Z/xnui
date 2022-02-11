if IsDuplicityVersion() then
	exports('add', function(source, id, payload)
		TriggerClientEvent(source, 'xnui:add', id, payload)
	end)

	exports('edit', function(source, id, payload)
		TriggerClientEvent(source, 'xnui:edit', id, payload)
	end)

	exports('remove', function(source, id)
		TriggerClientEvent(source, 'xnui:remove', id)
	end)
else
	local add = function(id, payload)
		SendNUIMessage({
			type = 'add',
			id = id,
			payload = payload
		})
	end

	local edit = function(id, payload)
		SendNUIMessage({
			type = 'edit',
			id = id,
			payload = payload
		})
	end

	local remove = function(id)
		SendNUIMessage({
			type = 'remove',
			id = id
		})
	end

	RegisterNetEvent('xnui:add', function(id, payload)
		add(id, payload)
	end)

	RegisterNetEvent('xnui:edit', function(id, payload)
		edit(id, payload)
	end)

	RegisterNetEvent('xnui:remove', function(id)
		remove(id)
	end)

	exports('add', function(id, payload)
		add(id, payload)
	end)

	exports('edit', function(id, payload)
		edit(id, payload)
	end)

	exports('remove', function(id)
		remove(id)
	end)
end