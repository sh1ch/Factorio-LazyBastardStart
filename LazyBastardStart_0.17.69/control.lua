
script.on_event(defines.events.on_player_created, function(event)
local items
local armor
if game.active_mods["Modular-Armor"] ~= nil then
	items = {
			{"deconstruction-planner", 1},
			{"blueprint", 1},
			{"modular-armor-starter", 1},
			{"construction-robot", 20},
			{"small-electric-pole", 50},
			{"offshore-pump", 10},
			{"boiler", 10},
			{"pipe", 50},
			{"steam-engine", 10},
			{"oil-refinery", 1},
			{"assembling-machine-1", 5},
			{"assembling-machine-2", 2},
			{"steel-chest", 1},
			{"lab", 1},
			{"automation-science-pack", 20},
		}

	armor = {
			{"personal-roboport-equipment"},
			{"personal-roboport-equipment"},
			{"solar-panel-equipment"},
			{"solar-panel-equipment"},
			{"solar-panel-equipment"},
			{"solar-panel-equipment"},
			{"actuator-equipment"},
			{"battery-equipment"},
			{"electrostatic-shield-equipment"},
			
	}
else
	items = {
		{"deconstruction-planner", 1},
		{"blueprint", 1},
		{"modular-armor-starter", 1},
		{"construction-robot", 20},
		{"small-electric-pole", 50},
		{"offshore-pump", 10},
		{"boiler", 10},
		{"pipe", 50},
		{"steam-engine", 10},
		{"oil-refinery", 1},
		{"assembling-machine-1", 5},
		{"assembling-machine-2", 2},
		{"steel-chest", 1},
		{"lab", 1},
		{"automation-science-pack", 20},
	}
	armor = {
		{"personal-roboport-equipment"},
		{"personal-roboport-equipment"},
		{"battery-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
	}
end
	local player = game.players[event.player_index]
	for i, v in pairs(items) do
		player.insert{name = v[1], count = v[2]}
	end

	local grid = player.get_inventory(defines.inventory.character_armor)[1].grid
	for  i, v in pairs(armor) do
		grid.put({name = v[1]})
	end

end)
