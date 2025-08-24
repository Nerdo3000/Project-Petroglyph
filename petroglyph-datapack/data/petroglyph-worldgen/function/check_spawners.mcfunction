schedule function petroglyph-worldgen:check_spawners 2s
execute as @e[type=minecraft:marker,tag=blaze_ritual_minor_active] at @s if block ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=cooldown] run tag @s add blaze_ritual_minor_inactive
execute as @e[type=minecraft:marker,tag=blaze_ritual_minor_active] at @s if block ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=cooldown] run tag @s remove blaze_ritual_minor_active

execute as @e[type=minecraft:marker,tag=blaze_ritual_minor_inactive] at @s run function petroglyph-worldgen:particle with entity @e[type=minecraft:marker,tag=blaze_ritual_major_inactive,limit=1,sort=nearest] data.pos
execute as @e[type=minecraft:marker,tag=blaze_ritual_minor_inactive] at @s unless block ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=cooldown] run tag @s add blaze_ritual_minor_active
execute as @e[type=minecraft:marker,tag=blaze_ritual_minor_inactive] at @s unless block ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=cooldown] run tag @s remove blaze_ritual_minor_inactive

execute as @e[type=minecraft:marker,tag=blaze_ritual_major_inactive] at @s unless entity @e[type=minecraft:marker,tag=blaze_ritual_minor_active,distance=..30] run schedule function petroglyph-bossfight:summon_inferno 4s append
execute as @e[type=minecraft:marker,tag=blaze_ritual_major_inactive] at @s unless entity @e[type=minecraft:marker,tag=blaze_ritual_minor_active,distance=..30] run tag @s add blaze_ritual_major_active
execute as @e[type=minecraft:marker,tag=blaze_ritual_major_inactive] at @s unless entity @e[type=minecraft:marker,tag=blaze_ritual_minor_active,distance=..30] run tag @s add blaze_ritual_major_needs_spawn
execute as @e[type=minecraft:marker,tag=blaze_ritual_major_inactive] at @s unless entity @e[type=minecraft:marker,tag=blaze_ritual_minor_active,distance=..30] run tag @s remove blaze_ritual_major_inactive

execute as @e[type=minecraft:marker,tag=blaze_ritual_major_active] at @s if entity @e[type=minecraft:marker,tag=blaze_ritual_minor_active,distance=..30] run tag @s add blaze_ritual_major_inactive
execute as @e[type=minecraft:marker,tag=blaze_ritual_major_active] at @s if entity @e[type=minecraft:marker,tag=blaze_ritual_minor_active,distance=..30] run tag @s remove blaze_ritual_major_active

execute as @e[type=minecraft:marker,tag=blaze_ritual_major_inactive,tag=!OLD] at @s if entity @e[type=minecraft:marker,tag=blaze_ritual_minor_active,distance=..30] run data modify entity @s data.pos.x set from entity @s Pos[0]
execute as @e[type=minecraft:marker,tag=blaze_ritual_major_inactive,tag=!OLD] at @s if entity @e[type=minecraft:marker,tag=blaze_ritual_minor_active,distance=..30] run data modify entity @s data.pos.y set from entity @s Pos[1]
execute as @e[type=minecraft:marker,tag=blaze_ritual_major_inactive,tag=!OLD] at @s if entity @e[type=minecraft:marker,tag=blaze_ritual_minor_active,distance=..30] run data modify entity @s data.pos.z set from entity @s Pos[2]
execute as @e[type=minecraft:marker,tag=blaze_ritual_major_inactive,tag=!OLD] at @s if entity @e[type=minecraft:marker,tag=blaze_ritual_minor_active,distance=..30] run tag @s add OLD

#summon minecraft:marker ~ ~ ~ {Tags:["blaze_ritual_minor_active"]}
#summon minecraft:marker ~ ~ ~ {Tags:["blaze_ritual_major_inactive"]}

execute as @e[type=minecraft:marker,tag=armor_stand_minor_active] at @s if block ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=cooldown] run tag @s add armor_stand_minor_inactive
execute as @e[type=minecraft:marker,tag=armor_stand_minor_active] at @s if block ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=cooldown] run tag @s remove armor_stand_minor_active

execute as @e[type=minecraft:marker,tag=armor_stand_minor_inactive] at @s unless block ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=cooldown] run tag @s add armor_stand_minor_active
execute as @e[type=minecraft:marker,tag=armor_stand_minor_inactive] at @s unless block ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=cooldown] run tag @s remove armor_stand_minor_inactive

execute as @e[type=minecraft:armor_stand,tag=armor_stand_alive_bow] at @s if entity @e[type=minecraft:marker,tag=armor_stand_minor_inactive,distance=..6] run function petroglyph-worldgen:spawn_enemy
execute as @e[type=minecraft:armor_stand,tag=armor_stand_alive_sword] at @s if entity @e[type=minecraft:marker,tag=armor_stand_minor_inactive,distance=..6] run function petroglyph-worldgen:spawn_enemy
