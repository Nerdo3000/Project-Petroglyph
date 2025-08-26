schedule function petroglyph-bossfight:spawn_loop_bug 2s replace

execute as @e[type=husk,tag=boss] at @s if entity @a[distance=..15] run function petroglyph-bossfight:spawn_bug

execute as @e[type=husk,tag=boss] at @s as @a[distance=..15] run playsound minecraft:entity.spider.ambient hostile @s ~ ~ ~ 0.18 0.59
execute as @e[type=husk,tag=boss] at @s as @a[distance=..15] run playsound minecraft:entity.illusioner.cast_spell hostile @s ~ ~ ~ 0.32 0.66