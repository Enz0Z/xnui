if IsDuplicityVersion() then
	exports('add', function(source, ...)
		TriggerClientEvent(source, 'xnui:add', ...)
	end)

	exports('edit', function(source, ...)
		TriggerClientEvent(source, 'xnui:edit', ...)
	end)

	exports('remove', function(source, ...)
		TriggerClientEvent(source, 'xnui:remove', ...)
	end)
else
	local parts = {}

	local add = function(id, payload)
		assert(parts[id] == nil, '"' .. id .. '" already exists.')
		SendNUIMessage({
			type = 'add',
			id = id,
			payload = payload
		})
		parts[id] = payload
	end

	local edit = function(id, payload, create_if)
		if create_if then
			if parts[id] == nil then
				add(id, payload)
				return
			end
		else
			assert(parts[id] ~= nil, '"' .. id .. '" does not exist.')
		end
		SendNUIMessage({
			type = 'edit',
			id = id,
			payload = payload
		})
		parts[id] = payload
	end

	local remove = function(id)
		assert(parts[id] ~= nil, '"' .. id .. '" does not exist.')
		SendNUIMessage({
			type = 'remove',
			id = id
		})
		parts[id] = nil
	end

	exports('add', function(...)
		add(...)
	end)

	exports('edit', function(...)
		edit(...)
	end)

	exports('remove', function(...)
		remove(...)
	end)

	exports('exist', function(id)
		return (parts[id] ~= nil)
	end)

	RegisterNetEvent('xnui:add', function(...)
		add(...)
	end)

	RegisterNetEvent('xnui:edit', function(...)
		edit(...)
	end)

	RegisterNetEvent('xnui:remove', function(...)
		remove(...)
	end)
end