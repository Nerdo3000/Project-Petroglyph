$execute at @s run summon item ~ ~1.05 ~ {Motion:[0,0.5,0],Tags:[$(loot_table)],Item:{id:stick}}
execute as @e[type=minecraft:item,tag=rabbit] run loot replace entity @s container.0 loot petroglyph-worldgen:camp/rabbit
execute as @e[type=minecraft:item,tag=nugget] run loot replace entity @s container.0 loot petroglyph-worldgen:camp/nugget
execute as @e[type=minecraft:item,tag=ingot] run loot replace entity @s container.0 loot petroglyph-worldgen:camp/ingot
execute as @e[type=minecraft:item,tag=water] run loot replace entity @s container.0 loot petroglyph-worldgen:camp/water