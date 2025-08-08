execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:gods_tear":1b}}}} unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s minecraft:regeneration 60 1 true

execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:gods_egg":1b}}}} run team join peace
execute as @e[type=#gembag:peacefully,nbt={"PersistenceRequired":0b}] run team join peace

execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:gods_eye":1b}}}} run effect give @s minecraft:night_vision 4 0 true
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:gods_star":1b}}}} run attribute @s minecraft:block_interaction_range base set 6
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:gods_star":1b}}}} run attribute @s minecraft:entity_interaction_range base set 4

execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:crystal_speed":1b}}}} run attribute @s minecraft:movement_speed base set 0.13
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:crystal_pure":1b}}}} unless entity @s[nbt={active_effects:[{id:"minecraft:absorption"}]}] run effect give @s minecraft:absorption 60 0 true

execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:diamond":1b}}}} run attribute @s minecraft:attack_damage base set 2
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:emerald":1b}}}} run effect give @s minecraft:luck 1 0 true
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:uncut":1b}}}} run attribute @s minecraft:armor base set 5
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:resin":1b}}}} run attribute @s minecraft:armor_toughness base set 5


execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:orb_nature":1b}}}} store result score @s rotation1 run data get entity @s Rotation[1]
gamerule randomTickSpeed 3
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:orb_nature":1b}}}} if score @s rotation1 matches -90..-80 run gamerule randomTickSpeed 2000


execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:orb_jump":1b}}}} run attribute @s minecraft:safe_fall_distance base set 4
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:orb_jump":1b}}}} run attribute @s minecraft:fall_damage_multiplier base set 0.8
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:orb_water":1b}}}} run effect give @s minecraft:conduit_power 1 0 true
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:orb_fire":1b}}}} run effect give @s minecraft:fire_resistance 1 0 true
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:orb_wind":1b}}}} run attribute @s minecraft:jump_strength base set 0.45
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:orb_wind":1b}}}} run attribute @s minecraft:gravity base set 0.04

execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:echo_shard":1b}}}} at @s unless block ~ ~-1 ~ #gembag:danger unless block ~ ~ ~ minecraft:lava run spawnpoint @s ~ ~ ~

execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:life_shard":1b}}}} run attribute @s minecraft:max_health base set 22
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:life_small_bud":1b}}}} run attribute @s minecraft:max_health base set 24
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:life_medium_bud":1b}}}} run attribute @s minecraft:max_health base set 26
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:life_large_bud":1b}}}} run attribute @s minecraft:max_health base set 28
execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",advancements:{"gembag:life_cluster":1b}}}} run attribute @s minecraft:max_health base set 30

stopsound @a * minecraft:entity.player.burp
