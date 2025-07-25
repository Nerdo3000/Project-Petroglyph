function hydra:stack_water
execute as @a run function hydra:replace_bottle
execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:glass_bottle"}}] run function hydra:replace_bottle_slot {n:0, slot:"container"}

execute as @e[type=villager, nbt={VillagerData:{profession:"minecraft:cleric"}}] run function hydra:check_villager

execute as @a if items entity @s player.crafting.0 recovery_compass[minecraft:custom_data~{glass_bottle_fake:{}}] run item modify entity @s player.crafting.0 {function:"minecraft:set_item",item:"minecraft:glass_bottle"}
execute as @a if items entity @s player.crafting.1 recovery_compass[minecraft:custom_data~{glass_bottle_fake:{}}] run item modify entity @s player.crafting.1 {function:"minecraft:set_item",item:"minecraft:glass_bottle"}
execute as @a if items entity @s player.crafting.2 recovery_compass[minecraft:custom_data~{glass_bottle_fake:{}}] run item modify entity @s player.crafting.2 {function:"minecraft:set_item",item:"minecraft:glass_bottle"}
execute as @a if items entity @s player.crafting.3 recovery_compass[minecraft:custom_data~{glass_bottle_fake:{}}] run item modify entity @s player.crafting.3 {function:"minecraft:set_item",item:"minecraft:glass_bottle"}

scoreboard players set @a hydra.distance_from_start 0
execute as @a at @s anchored eyes if function hydra:raycast_crafting_table run function hydra:real_bottle_all

execute as @a[scores={hydration_rate=..3}] run title @s actionbar [{"text": "Hydration: ","color": "aqua"},{"score": {"name": "@s","objective": "hydration_level"},"color": "aqua"},{"text": "/","color": "aqua"},{"text": "1500 ","color": "aqua"},{"text": " [-","color": "aqua"},{"score":{"name": "@s","objective": "hydration_rate"},"color": "aqua"},{"text": "]","color": "aqua"}]
execute as @a[scores={hydration_rate=4..6}] run title @s actionbar [{"text": "Hydration: ","color": "yellow"},{"score": {"name": "@s","objective": "hydration_level"},"color": "yellow"},{"text": "/","color": "yellow"},{"text": "1500 ","color": "yellow"},{"text": " [-","color": "yellow"},{"score":{"name": "@s","objective": "hydration_rate"},"color": "yellow"},{"text": "]","color": "yellow"}]
execute as @a[scores={hydration_rate=7..}] run title @s actionbar [{"text": "Hydration: ","color": "red"},{"score": {"name": "@s","objective": "hydration_level"},"color": "red"},{"text": "/","color": "red"},{"text": "1500 ","color": "red"},{"text": " [-","color": "red"},{"score":{"name": "@s","objective": "hydration_rate"},"color": "red"},{"text": "]","color": "red"}]

execute as @a[tag=!OLD] run scoreboard players set @s hydration_level 1000
execute as @a[tag=!OLD] run tag @s add OLD

execute as @a if score @s hasDied matches 1.. run scoreboard players set @s hydration_level 1000
scoreboard players set @a hasDied 0
