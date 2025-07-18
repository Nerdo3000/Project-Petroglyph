title @s actionbar {text:"You can't get water from a source block!",color:"dark_red"}
scoreboard players set @s show_no_water 50

execute at @s run summon minecraft:item ~ ~ ~ {PickupDelay:50,Tags:["set_count"],Item:{id:"minecraft:glass_bottle",count:1}}
data modify entity @e[type=item, limit=1, sort=nearest, tag=set_count] Item.count set from entity @s SelectedItem.count
item modify entity @s weapon.mainhand hydra:set_0
execute as @e[type=item, tag=set_count] run tag @s remove set_count
