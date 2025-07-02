title @s actionbar {text:"You can't get water from a source block!",color:"dark_red"}
scoreboard players set @s show_no_water 50

execute as @s at @s run summon minecraft:item ~ ~ ~ {PickupDelay:50,Tags:["set_count"],Item:{id:"minecraft:glass_bottle",count:1}}
execute as @s at @s run data modify entity @e[type=item, limit=1, sort=nearest, tag=set_count] Item.count set from entity @p SelectedItem.count
execute as @s run item modify entity @s weapon.mainhand hydra:set_0
execute as @e[type=item, tag=set_count] run tag @s remove set_count
