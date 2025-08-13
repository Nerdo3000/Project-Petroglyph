execute as @s if score @s petroglyph.barrel_cooldown matches ..0 run function petroglyph-worldgen:barrel_use
execute as @s run function petroglyph-worldgen:drop_loot
execute as @s run data remove entity @s interaction
execute as @s at @s run particle minecraft:egg_crack ~ ~ ~ 0.5 0.5 0.5 1 1 normal