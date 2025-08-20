execute as @e[type=cave_spider,tag=tiny] run attribute @s scale base set 0.5
tag @e remove tiny

execute as @e[type=minecraft:marker,tag=summon_barrel] at @s run summon minecraft:interaction ~ ~-0.05 ~ {height:1.1,width:1.1,Tags:["camp_barrel_int"],Passengers:[{id:block_display,Tags:["camp_barrel_block"],block_state:{Name:barrel,Properties:{open:"false",facing:"up"}},height:1,width:1,transformation:{scale:[1,1,1],right_rotation:{angle:0,axis:[0,0,0]},left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.5,-1.05,-0.5]}}]}
execute as @e[type=minecraft:marker,tag=summon_barrel] run kill @s

execute as @e[type=minecraft:interaction,tag=camp_barrel_int] run function petroglyph-worldgen:barrel_int

execute as @e[type=minecraft:block_display,tag=camp_barrel_block] run function petroglyph-worldgen:barrel_block
scoreboard players remove @e petroglyph.barrel_cooldown 1

execute as @e[type=minecraft:marker,tag=replace_with_ghast] at @s positioned over motion_blocking run function petroglyph-worldgen:summon_ghast
execute as @e[type=minecraft:marker,tag=ghast_attached] at @s unless entity @e[type=minecraft:ghast,tag=marker_attached,distance=..5] run kill @s
execute as @e[type=minecraft:marker,tag=ghast_attached] at @s run tp @s @e[type=minecraft:ghast,tag=marker_attached,distance=..5,limit=1]

