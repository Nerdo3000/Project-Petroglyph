execute as @a[advancements={gembag:gods_tear=true}] unless entity @a[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s minecraft:regeneration 60 1 true

execute as @a[advancements={gembag:gods_egg=true}] run team join peace
execute as @e[type=#minecraft:peacefully,nbt={"PersistenceRequired":0b}] run team join peace

execute as @a[advancements={gembag:gods_eye=true}] run effect give @s minecraft:night_vision 4 0 true
execute as @a[advancements={gembag:gods_star=true}] run attribute @s minecraft:block_interaction_range base set 6
execute as @a[advancements={gembag:gods_star=true}] run attribute @s minecraft:entity_interaction_range base set 4

execute as @a[advancements={gembag:crystal_speed=true}] run attribute @s minecraft:movement_speed base set 0.13
execute as @a[advancements={gembag:crystal_pure=true}] unless entity @a[nbt={active_effects:[{id:"minecraft:absorption"}]}] run effect give @s minecraft:absorption 60 0 true

execute as @a[advancements={gembag:diamond=true}] run attribute @s minecraft:attack_damage base set 2
execute as @a[advancements={gembag:emerald=true}] run effect give @s minecraft:luck 1 0 true
execute as @a[advancements={gembag:iron_nugget=true}] run attribute @s minecraft:attack_speed base set 6
execute as @a[advancements={gembag:gold_nugget=true}] run attribute @s minecraft:block_break_speed base set 2
execute as @a[advancements={gembag:uncut=true}] run attribute @s minecraft:armor base set 5
execute as @a[advancements={gembag:resin=true}] run attribute @s minecraft:armor_toughness base set 5


execute as @a[advancements={gembag:orb_nature=true}] store result score @s rotation1 run data get entity @s Rotation[1]
gamerule randomTickSpeed 3
execute as @a[advancements={gembag:orb_nature=true}] if score @s rotation1 matches -90..-80 run gamerule randomTickSpeed 2000


execute as @a[advancements={gembag:orb_wind=true}] run attribute @s minecraft:gravity base set 0.04
execute as @a[advancements={gembag:orb_wind=true}] run attribute @s minecraft:safe_fall_distance base set 4
execute as @a[advancements={gembag:orb_wind=true}] run attribute @s minecraft:fall_damage_multiplier base set 0.8
execute as @a[advancements={gembag:orb_water=true}] run effect give @s minecraft:conduit_power 1 0 true
execute as @a[advancements={gembag:orb_fire=true}] run effect give @s minecraft:fire_resistance 1 0 true
execute as @a[advancements={gembag:orb_jump=true}] run attribute @s minecraft:jump_strength base set 0.45

execute as @a[advancements={gembag:echo_shard=true}] at @s unless block ~ ~-1 ~ #gembag:danger unless block ~ ~ ~ minecraft:lava run spawnpoint @s ~ ~ ~

execute as @a[advancements={gembag:life_shard=true}] run attribute @s minecraft:max_health base set 22
execute as @a[advancements={gembag:life_small_bud=true}] run attribute @s minecraft:max_health base set 24
execute as @a[advancements={gembag:life_medium_bud=true}] run attribute @s minecraft:max_health base set 26
execute as @a[advancements={gembag:life_large_bud=true}] run attribute @s minecraft:max_health base set 28
execute as @a[advancements={gembag:life_cluster=true}] run attribute @s minecraft:max_health base set 30

stopsound @a * minecraft:entity.player.burp
