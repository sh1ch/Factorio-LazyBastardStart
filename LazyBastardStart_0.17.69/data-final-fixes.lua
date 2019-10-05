
local myEquipment
myEquipment = data.raw["equipment-grid"]["small-equipment-grid"]
myEquipment.width = 6
myEquipment.height = 4  --24

myEquipment = data.raw["equipment-grid"]["medium-equipment-grid"]
myEquipment.width = 8
myEquipment.height = 6 --48

-- Mk2 = 100 Spaces
-- No Changes

myEquipment = util.table.deepcopy (data.raw["equipment-grid"]["small-equipment-grid"])
myEquipment.name = "starter-grid"
--myEquipment.width = 3
--myEquipment.height = 3
data:extend( {myEquipment } )

myEquipment = util.table.deepcopy (data.raw["armor"]["modular-armor"])
myEquipment.name = "modular-armor-starter"
myEquipment.equipment_grid = "starter-grid"  --9
myEquipment.inventory_size_bonus = 0
myEquipment.resistances = {}

data:extend( {myEquipment } )

