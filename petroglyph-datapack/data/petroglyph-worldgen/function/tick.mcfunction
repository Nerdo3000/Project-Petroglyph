execute as @e[type=cave_spider,tag=tiny] run attribute @s scale base set 0.5
tag @e remove tiny

execute as @e[type=minecraft:marker,tag=summon_barrel] at @s run summon minecraft:interaction ~ ~-0.05 ~ {height:1.1,width:1.1,Tags:["camp_barrel_int"],Passengers:[{id:block_display,Tags:["camp_barrel_block"],block_state:{Name:barrel,Properties:{open:"false",facing:"up"}},height:1,width:1,transformation:{scale:[1,1,1],right_rotation:{angle:0,axis:[0,0,0]},left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.5,-1.05,-0.5]}}]}
execute as @e[type=minecraft:marker,tag=summon_barrel] run kill @s

execute as @e[type=minecraft:interaction,tag=camp_barrel_int] if score @s petroglyph.barrel_cooldown matches ..0 run function petroglyph-worldgen:barrel
execute as @e[type=minecraft:interaction,tag=camp_barrel_int] run function petroglyph-worldgen:drop_loot
execute as @e[type=minecraft:interaction,tag=camp_barrel_int] run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=camp_barrel_int] at @s run particle minecraft:egg_crack ~ ~ ~ 0.5 0.5 0.5 1 1 normal

execute as @e[type=minecraft:block_display,tag=camp_barrel_block] if score @s petroglyph.barrel_cooldown matches 0.. run data modify entity @s block_state.Properties."open" set value "true"
execute as @e[type=minecraft:block_display,tag=camp_barrel_block] if score @s petroglyph.barrel_cooldown matches ..0 run data modify entity @s block_state.Properties."open" set value "false"

scoreboard players remove @e petroglyph.barrel_cooldown 1
