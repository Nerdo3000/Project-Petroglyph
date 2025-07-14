function hydra:stack_water

execute as @a[scores={hydration_rate=..3}] run title @s actionbar [{"text": "Hydration: ","color": "aqua"},{"score": {"name": "@s","objective": "hydration_level"},"color": "aqua"},{"text": "/","color": "aqua"},{"text": "1500 ","color": "aqua"},{"text": " [-","color": "aqua"},{"score":{"name": "@s","objective": "hydration_rate"},"color": "aqua"},{"text": "]","color": "aqua"}]
execute as @a[scores={hydration_rate=4..6}] run title @s actionbar [{"text": "Hydration: ","color": "yellow"},{"score": {"name": "@s","objective": "hydration_level"},"color": "yellow"},{"text": "/","color": "yellow"},{"text": "1500 ","color": "yellow"},{"text": " [-","color": "yellow"},{"score":{"name": "@s","objective": "hydration_rate"},"color": "yellow"},{"text": "]","color": "yellow"}]
execute as @a[scores={hydration_rate=7..}] run title @s actionbar [{"text": "Hydration: ","color": "red"},{"score": {"name": "@s","objective": "hydration_level"},"color": "red"},{"text": "/","color": "red"},{"text": "1500 ","color": "red"},{"text": " [-","color": "red"},{"score":{"name": "@s","objective": "hydration_rate"},"color": "red"},{"text": "]","color": "red"}]

scoreboard players set @a checked_bottles 0
scoreboard players set @a hydra.distance_from_start 0
execute as @a if items entity @s weapon.offhand minecraft:glass_bottle at @s anchored eyes store result score @s checked_bottles run function hydra:raycast
execute as @a if score @s checked_bottles matches 1 run function hydra:drop_bottles_slot {hand:"offhand"}

scoreboard players set @a checked_bottles 0
scoreboard players set @a hydra.distance_from_start 0
execute as @a if items entity @s weapon.mainhand minecraft:glass_bottle at @s anchored eyes store result score @s checked_bottles run function hydra:raycast
execute as @a if score @s checked_bottles matches 1 run scoreboard players set @s checked_bottles 2
execute as @a if score @s checked_bottles matches 2 run function hydra:drop_bottles_slot {hand:"mainhand"}

execute as @a[tag=!OLD] run scoreboard players set @s hydration_level 1000
execute as @a[tag=!OLD] run tag @s add OLD

execute as @a if score @s show_no_water matches 1.. run function hydra:show_no_water
execute as @a if score @s show_no_water matches 1.. run scoreboard players remove @s show_no_water 1

execute as @a if score @s hasDied matches 1.. run scoreboard players set @s hydration_level 1000
scoreboard players set @a hasDied 0
