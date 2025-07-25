execute as @e[type=husk,tag=boss_setup] run function bossfight:boss_setup

execute as @e[type=husk,tag=boss] run function bossfight:boss

execute as @a[gamemode=survival] at @s if entity @e[type=husk,tag=boss,distance=..50] run gamemode adventure @s
execute as @a[gamemode=adventure] at @s unless entity @e[type=husk,tag=boss,distance=..50] run gamemode survival @s

execute unless entity @e[type=husk,tag=boss] run bossbar remove minecraft:pharao

execute as @a run function bossfight:inf_totem

#/give @p husk_spawn_egg[entity_data={id:"minecraft:husk",DeathLootTable:"bossfight:pharao",CustomNameVisible:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Health:120f,IsBaby:0b,CanBreakDoors:0b,Tags:["boss_setup", "boss"],CustomName:"Pharao",attributes:[{id:"minecraft:armor",base:16},{id:"minecraft:armor_toughness",base:10},{id:"minecraft:attack_damage",base:15},{id:"minecraft:attack_speed",base:2},{id:"minecraft:knockback_resistance",base:1.0},{id:"minecraft:max_health",base:120},{id:"minecraft:movement_speed",base:0.15},{id:"minecraft:scale",base:2.2},{id:"minecraft:spawn_reinforcements",base:0}]}] 1
