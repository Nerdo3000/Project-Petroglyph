title @s actionbar {text:"You can't get water from a source block!",color:"dark_red"}
scoreboard players set @s show_no_water 50

execute as @s at @s unless score @s checked_bottles matches 1.. run summon minecraft:item ~ ~ ~ {PickupDelay:50,Tags:["set_count"],Item:{id:"minecraft:glass_bottle",count:1}}
execute as @s unless score @s checked_bottles matches 1.. at @s run data modify entity @e[type=item, limit=1, sort=nearest, tag=set_count] Item.count set from entity @p equipment.offhand.count
execute as @s run item modify entity @s weapon.offhand hydra:set_0
execute as @e[type=item, tag=set_count] run tag @s remove set_count
scoreboard players set @s checked_bottles 1

