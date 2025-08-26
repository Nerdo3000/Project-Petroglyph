execute as @s at @s if score @s petroglyph.barrel_cooldown matches 100 as @a[distance=..20] run playsound minecraft:block.barrel.open block @s ~ ~ ~ 1 0.91
execute as @s at @s if score @s petroglyph.barrel_cooldown matches 100 as @a[distance=..20] run playsound minecraft:block.vault.open_shutter block @s ~ ~ ~ 0.58 1

execute as @s at @s if score @s petroglyph.barrel_cooldown matches 100 run function petroglyph-worldgen:summon_item {loot_table:"ingot"}
execute as @s at @s if score @s petroglyph.barrel_cooldown matches 100 run particle minecraft:dust_plume ~ ~2 ~ 0 1 0 0.1 30 normal
execute as @s at @s if score @s petroglyph.barrel_cooldown matches 100 as @a[distance=..20] run playsound minecraft:block.vault.eject_item block @s ~ ~ ~ 0.86 0.85

execute as @s at @s if score @s petroglyph.barrel_cooldown matches 80 run function petroglyph-worldgen:summon_item {loot_table:"rabbit"}
execute as @s at @s if score @s petroglyph.barrel_cooldown matches 80 run particle minecraft:dust_plume ~ ~2 ~ 0 1 0 0.1 30 normal
execute as @s at @s if score @s petroglyph.barrel_cooldown matches 80 as @a[distance=..20] run playsound minecraft:block.vault.eject_item block @s ~ ~ ~ 0.86 0.85

execute as @s at @s if score @s petroglyph.barrel_cooldown matches 60 run function petroglyph-worldgen:summon_item {loot_table:"water"}
execute as @s at @s if score @s petroglyph.barrel_cooldown matches 60 run particle minecraft:dust_plume ~ ~2 ~ 0 1 0 0.1 30 normal
execute as @s at @s if score @s petroglyph.barrel_cooldown matches 60 as @a[distance=..20] run playsound minecraft:block.vault.eject_item block @s ~ ~ ~ 0.86 0.85

execute as @s at @s if score @s petroglyph.barrel_cooldown matches 40 run function petroglyph-worldgen:summon_item {loot_table:"nugget"}
execute as @s at @s if score @s petroglyph.barrel_cooldown matches 40 run particle minecraft:dust_plume ~ ~2 ~ 0 1 0 0.1 30 normal
execute as @s at @s if score @s petroglyph.barrel_cooldown matches 40 as @a[distance=..20] run playsound minecraft:block.vault.eject_item block @s ~ ~ ~ 0.86 0.85

execute as @s at @s if score @s petroglyph.barrel_cooldown matches 0 as @a[distance=..20] run playsound minecraft:block.barrel.close block @s ~ ~ ~ 1 0.91
execute as @s at @s if score @s petroglyph.barrel_cooldown matches 0 as @a[distance=..20] run playsound minecraft:block.vault.close_shutter block @s ~ ~ ~ 0.5 1
